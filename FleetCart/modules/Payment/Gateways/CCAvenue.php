<?php

namespace Modules\Payment\Gateways;

use Exception;
use Illuminate\Http\Request;
use Modules\Order\Entities\Order;
use Modules\Payment\GatewayInterface;
use Modules\Payment\Responses\CCAvenueResponse;
use Modules\Payment\CCAvenue\CCAvenueCrypto;


class CCAvenue implements GatewayInterface
{
    public $label;
    public $description;

    //CCAvenue variables
    private $merchantId;
    private $accessCode;
    private $workingKey;
    private $testMode;
    private $currency;
    private $crypto;

    public function __construct()
    {
        $this->label = setting('ccavenue_label');
        $this->description = setting('ccavenue_description');

        $this->merchantId = config('ccavenue.merchant_id');
        $this->accessCode = config('ccavenue.access_code');
        $this->workingKey = config('ccavenue.working_key');
        $this->currency = "INR";
        $this->redirectUrl = config('ccavenue.redirect_url');
        $this->cancelUrl = config('ccavenue.cancel_url');
        $this->testMode = false;
        $this->crypto = new CCAvenueCrypto();
        // $this->currency = setting('ccavenue_currency', 'INR');
        
    }

    private function prepareMerchantData($order, $data)
    {
        $merchantData = [
            'merchant_id' => $this->merchantId,
            'order_id' => $order->id,
            'amount' => number_format($order->total->amount(), 2, '.', ''),
            'currency' => $this->currency,
            'redirect_url' => $this->getRedirectUrl($order),
            'cancel_url' => $this->getCancelUrl($order),
            'language' => 'EN',
            'billing_name' => $order->billing_first_name." ".$order->billing_last_name,
            'billing_address' => $order->billing_address_1,
            'billing_city' => $order->billing_city,
            'billing_state' => $order->billing_state,
            'billing_zip' => $order->billing_zip,
            'billing_country' => $order->billing_country,
            'billing_tel' => $order->billing_phone,
            'billing_email' => $order->customer_email,
            'delivery_name' => $order->shipping_full_name ?: $order->billing_full_name,
            'delivery_address' => $order->shipping_address_1 ?: $order->billing_address_1,
            'delivery_city' => $order->shipping_city ?: $order->billing_city,
            'delivery_state' => $order->shipping_state ?: $order->billing_state,
            'delivery_zip' => $order->shipping_zip ?: $order->billing_zip,
            'delivery_country' => $order->shipping_country ?: $order->billing_country,
            'delivery_tel' => $order->shipping_phone ?: $order->billing_phone,
            'merchant_param1' => $order->customer_id,
            'merchant_param2' => $order->id,
            'merchant_param3' => '',
            'merchant_param4' => '',
            'merchant_param5' => '',
            'promo_code' => '',
            'customer_identifier' => $order->customer_id,
        ];

        return $this->arrayToString($merchantData);
    }


    /**
     * @throws Exception
     */
    public function purchase(Order $order, Request $request)
    {
        if (currency() !== 'INR') {
            throw new Exception(trans('payment::messages.only_supports_inr'));
        }
        // return $order;
        // return array(
        //     $this->merchantId,
        //     $this->accessCode,
        //     $this->workingKey,
        //     $this->testMode,
        //     $this->currency,
        //     $this->redirectUrl,
        //     $this->cancelUrl
        // );
        
        $merchantData = $this->prepareMerchantData($order, $request);
        $encryptedData = $this->crypto->encrypt($merchantData, $this->workingKey);
        
        return [
            'encrypted_data' => $encryptedData,
            'access_code' => $this->accessCode,
            'merchant_id' => $this->merchantId,
            'action_url' => $this->getActionUrl(),
            'redirect_url' => $this->getRedirectUrl($order),
            'cancel_url' => $this->getCancelUrl($order)
        ];

        // $this->crypto = new CCAvenueCrypto();
        // $payment = new Payment();
        // $payment->setMerchantId(setting('ccavenue_merchant_id'));
        // $payment->setAccessCode(setting('ccavenue_access_code'));
        // $payment->setWorkingKey(setting('ccavenue_working_key'));
        // $payment->setRedirectUrl($this->getRedirectUrl($order));
        // $payment->setCancelUrl($this->getCancelUrl($order));

        // $payment->setOrderId($order->id);
        // $payment->setAmount($order->total->convertToCurrentCurrency()->round()->amount());
        // $payment->setCurrency(currency());

        // // Billing info (customize as per your Order fields)
        // $payment->setBillingName(trim($order->customer_first_name . ' ' . $order->customer_last_name));
        // $payment->setBillingTel($order->customer_phone);
        // $payment->setBillingEmail($order->customer_email);
        // $payment->setBillingAddress($order->billing_address_1 ?? '');
        // $payment->setBillingCity($order->billing_city ?? '');
        // $payment->setBillingState($order->billing_state ?? '');
        // $payment->setBillingZip($order->billing_zip ?? '');
        // $payment->setBillingCountry($order->billing_country ?? 'IN');

        // // Generate and return the payment form (HTML)
        // $paymentForm = $payment->makePayment();

        // return new CCAvenueResponse($order, $paymentForm);
    }

    public function complete(Order $order)
    {
        $payment = new Payment();
        $payment->setWorkingKey(setting('ccavenue_working_key'));

        $response = $payment->handleResponse(request('encResp'));

        return new CCAvenueResponse($order, $response);
    }

    private function getRedirectUrl($order)
    {
        // This should point to your CCAvenue payment response handler route
        return route('checkout.complete.store', ['orderId' => $order->id, 'paymentMethod' => 'ccavenue']);
    }

    private function getCancelUrl($order)
    {
        // Optional: customize as needed
        return route('checkout.payment_canceled.store', ['orderId' => $order->id, 'paymentMethod' => 'ccavenue']);
    }

    

    // New code 
       private function arrayToString($data)
    {
        $string = '';
        foreach ($data as $key => $value) {
            $string .= $key . '=' . $value . '&';
        }
        return rtrim($string, '&');
    }

    private function getActionUrl()
    {
        return $this->testMode 
            ? 'https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction'
            : 'https://secure.ccavenue.com/transaction/transaction.do?command=initiateTransaction';
    }

    // private function getRedirectUrl()
    // {
    //     return route('payment.ccavenue.complete');
    // }

    // private function getCancelUrl()
    // {
    //     return route('payment.ccavenue.cancel');
    // }

    public function getRules()
    {
        return [
            'ccavenue_merchant_id' => ['required'],
            'ccavenue_access_code' => ['required'],
            'ccavenue_working_key' => ['required'],
        ];
    }

    public function getPublicKey($order)
    {
        return null;
    }

    // public function getRedirectUrl($order)
    // {
    //     return route('payment.ccavenue.redirect', $order->id);
    // }
}