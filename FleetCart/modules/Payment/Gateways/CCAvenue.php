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
    private $paymentUrl;
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
        $this->paymentUrl = config('ccavenue.payment_url');
        
        $this->testMode = false;
        $this->crypto = new CCAvenueCrypto();
        // $this->currency = setting('ccavenue_currency', 'INR');
        
    }

    private function prepareMerchantData($order, $data)
    {
        $merchantData = [
            'tid' => $order->id."".time(),
            'merchant_id' => $this->merchantId,
            'order_id' => $order->id,
            'amount' => number_format($order->total->amount(), 2, '.', ''),
            'currency' => $this->currency,
            '¤cy' => $this->currency,
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
        $merchant_data='';
        foreach ($merchantData as $key => $value){
            $merchant_data.=$key.'='.$value.'&';
        }
        return $merchant_data;  
        // return "tid=1754675591173&merchant_id=3092990&order_id=123654789&amount=1.00¤cy=INR&redirect_url=http://localhost/Non_Seamless_kit/ccavResponseHandler.php&cancel_url=http://localhost/Non_Seamless_kit/ccavResponseHandler.php&language=EN&";
        // return $this->arrayToString($merchantData);
    }


    /**
     * @throws Exception
     */
    public function purchase(Order $order, Request $request)
    {
        if (currency() !== 'INR') {
            throw new Exception(trans('payment::messages.only_supports_inr'));
        }
        $merchantData = $this->prepareMerchantData($order, $request);
        $encryptedData = $this->crypto->encrypt($merchantData, $this->workingKey);

        // $action_url=$this->paymentUrl.'&encRequest=e75b29ad38ee4db25cbc2c0c712c1eb444f6fe085cfc599c46e5b5aaeeb32679991a16bd1fad69d1ccc82158fa326c09d873a1c21ae552370dbd4d3c74871f4957f5aa63a9f9926497585d9f542f67e5a47e6c4c4d4382d7380fb9179a5945ab2b365d374a0e46f2c78c93111c793fe213dd474dc64512907e0a1c632b91fbb3ef7e2da016960de8b050034e99ad7fa1e9e70baaa3bbd20bfeb961e51ab65f9e8bd183cff2c736d489472425142a9859dc30400bed0ab135dd3c4d2eecb2d89fa1184643ed0c726a27568210c3894805505fa0a6a87fb6bce9d505eb2ebecc3ffd2083e65a043d7e5d498bcf79a7c253&access_code='.$this->accessCode;
        $action_url=$this->paymentUrl.'&encRequest='.$encryptedData.'&access_code='.$this->accessCode;

        return new CCAvenueResponse($order, [
            // 'access_code' => $this->accessCode,
            // 'merchant_id' => $this->merchantId,
            'action_url' => $action_url,
            'redirect_url' => $this->getRedirectUrl($order),
            'cancel_url' => $this->getCancelUrl($order)
        ]);
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


}