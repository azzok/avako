<?php

namespace Modules\Checkout\Http\Controllers;

use Exception;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\RedirectResponse;
use Illuminate\Contracts\View\Factory;
use Illuminate\Foundation\Application;
use Modules\Order\Entities\Order;
use Modules\Payment\Facades\Gateway;
use Modules\Checkout\Events\OrderPlaced;
use Modules\Checkout\Services\OrderService;
use Modules\Payment\Libraries\Bkash\BkashService;
use Modules\Payment\Libraries\Nagad\NagadPayment;
use Modules\Payment\CCAvenue\CCAvenueCrypto;


class CheckoutCompleteController
{
    /**
     * Store a newly created resource in storage.
     *
     * @param int $orderId
     * @param OrderService $orderService
     *
     * @return RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function store(int $orderId, OrderService $orderService)
    {

        if (request()->query('paymentMethod') === 'ccavenue') {
             try {
                       
                    // $workingKey='AC2F260942642728D34730B8BE54523C';		//Working Key should be provided here.
                    // $encResponse=$_POST["encResp"];			//This is the response sent by the CCAvenue Server
                    // $rcvdString=decrypt($encResponse,$workingKey);		//Crypto Decryption used as per the specified working key.


                    $workingKey = config('ccavenue.working_key');
                    $paymentRequestDetails = request()->all();
                    dd($paymentRequestDetails);
                    $encResponse=$paymentRequestDetails->encResp;	
                    $crypto = new CCAvenueCrypto();
                    $rcvdString = $this->crypto->decrypt($encResponse, $workingKey);
                    // dd($rcvdString);
                    $order_status="";
                    $decryptValues=explode('&', $rcvdString);
                    $dataSize=sizeof($decryptValues);

                    for($i = 0; $i < $dataSize; $i++) 
                    {
                        $information=explode('=',$decryptValues[$i]);
                        if($i==3)	$order_status=$information[1];
                    }

                    // if($order_status==="Success")
                    // {
                    //     echo "<br>Thank you for shopping with us. Your credit card has been charged and your transaction is successful. We will be shipping your order to you soon.";
                    // }
                    // else if($order_status==="Aborted")
                    // {
                    //     echo "<br>Thank you for shopping with us.We will keep you posted regarding the status of your order through e-mail";
                    // }
                    // else if($order_status==="Failure")
                    // {
                    //     echo "<br>Thank you for shopping with us.However,the transaction has been declined.";
                    // }
                    // else
                    // {
                    //     echo "<br>Security Error. Illegal access detected";
                    // }


                
                if($order_status != 'Success'){
                    return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
                }

            } catch (Exception $e) {
                return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
            }
        }
        if (request()->query('paymentMethod') === 'iyzico') {
            try {
                $request = new \Iyzipay\Request\RetrieveCheckoutFormRequest();
                $request->setLocale(
                    locale() === 'tr'
                        ? \Iyzipay\Model\Locale::TR
                        : \Iyzipay\Model\Locale::EN
                );
                $request->setConversationId(request()->query('reference'));
                $request->setToken($_POST['token']);

                $options = new \Iyzipay\Options();
                $options->setApiKey(setting('iyzico_api_key'));
                $options->setSecretKey(setting('iyzico_api_secret'));
                $options->setBaseUrl(
                    setting('iyzico_test_mode')
                        ? 'https://sandbox-api.iyzipay.com'
                        : 'https://api.iyzipay.com'
                );

                $response = \Iyzipay\Model\CheckoutForm::retrieve($request, $options);

                if ($response->getPaymentStatus() !== 'SUCCESS') {
                    return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
                }
            } catch (Exception $e) {
                return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
            }
        }

        if (request()->query('paymentMethod') === 'bkash') {
            $redirectToCancel = redirect()->route('checkout.payment_canceled.store', [
                'orderId' => $orderId,
                'paymentMethod' => 'bkash'
            ]);

            try {
                $status = strtolower(request('status'));
                $paymentId = request('paymentID');

                if ($status !== 'success' || !$paymentId) {
                    return $redirectToCancel;
                }

                $bkashConfig = [
                    'sandbox' => (bool) setting('bkash_test_mode'),
                    'app_key' => setting('bkash_app_key'),
                    'app_secret' => setting('bkash_app_secret'),
                    'username' => setting('bkash_username'),
                    'password' => setting('bkash_password'),
                    'timezone' => 'Asia/Dhaka'
                ];

                $bkash = new BkashService($bkashConfig);
                $paymentResponse = $bkash->executePayment($paymentId);

                if (
                    !$paymentResponse ||
                    strtolower($paymentResponse['transactionStatus'] ?? '') !== 'completed'
                ) {
                    return $redirectToCancel;
                }

                $order = Order::findOrFail($orderId);
                $order->storeTransaction($paymentResponse);

                event(new OrderPlaced($order));

                return redirect()->route('checkout.complete.show');
            } catch (\Exception $e) {
                Log::error('Bkash callback error: ' . $e->getMessage());

                return $redirectToCancel;
            }
        }

        if (request()->query('paymentMethod') === 'nagad') {
            try {
                if (!request()->has('order_id') || !request()->has('payment_ref_id')) {
                    return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
                }

                $paymentRefId = request()->payment_ref_id;
                $config = [
                    'sandbox' => setting('bkash_sandbox') ? true : false,
                    'merchant_id' => setting('nagad_merchant_id') ?? '',
                    'merchant_number' => setting('nagad_merchant_number') ?? '',
                    'public_key' => setting('nagad_public_key') ?? '',
                    'private_key' => setting('nagad_private_key') ?? '',
                    'callback_url' => '',
                ];

                $nagadPayment = new NagadPayment($config);
                $response = $nagadPayment->verify($paymentRefId);

                if ($response->statusCode != "000" || $response->status != "Success") {
                    return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
                }
            } catch (Exception $e) {
                return redirect()->route('checkout.payment_canceled.store', ['orderId' => $orderId, 'paymentMethod' => request()->query('paymentMethod')]);
            }
        }

        $order = Order::findOrFail($orderId);

        $gateway = Gateway::get(request('paymentMethod'));

        try {
            $response = $gateway->complete($order);
        } catch (Exception $e) {
            $orderService->delete($order);

            return response()->json([
                'message' => $e->getMessage(),
            ], 403);
        }

        $order->storeTransaction($response);

        event(new OrderPlaced($order));

        if (!request()->ajax()) {
            return redirect()->route('checkout.complete.show');
        }
    }


    /**
     * Display the specified resource.
     *
     * @return Application|Factory|object|View|RedirectResponse
     */
    public function show()
    {
        $order = session('placed_order');

        return $order
            ? view('storefront::public.checkout.complete.show', compact('order'))
            : redirect()->route('home');
    }
}
