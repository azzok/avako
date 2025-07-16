<?php

// namespace Modules\Payment\Responses;

// class CCAvenueResponse
// {
//     public $order;
//     public $data;

//     public function __construct($order, $data)
//     {
//         $this->order = $order;
//         $this->data = $data;
//     }

//     // Implement any methods you need to parse or present the response
// }



namespace Modules\Payment\Responses;

use Modules\Order\Entities\Order;
use Modules\Payment\GatewayResponse;
use Modules\Payment\ShouldRedirect;
use Modules\Payment\HasTransactionReference;

class CCAvenueResponse extends GatewayResponse implements ShouldRedirect, HasTransactionReference
{
    private $order;
    private $data;

    public function __construct(Order $order, $data)
    {
        $this->order = $order;
        $this->data = $data;
    }

    /**
     * Get order ID
     */
    public function getOrderId()
    {
        return $this->order->id;
    }

    /**
     * Get redirect URL for payment form
     */
    public function getRedirectUrl()
    {
        // Return the CCAvenue action URL with encrypted data
        return $this->data['action_url'] ?? '';
    }

    /**
     * Get transaction reference
     */
    public function getTransactionReference()
    {
        return $this->data['tracking_id'] ?? $this->data['trans_id'] ?? 'ccavenue_' . $this->order->id;
    }

    /**
     * Check if payment was successful
     */
    public function isSuccessful()
    {
        return isset($this->data['order_status']) && $this->data['order_status'] === 'Success';
    }

    /**
     * Check if payment failed
     */
    public function isFailed()
    {
        return isset($this->data['order_status']) && 
               in_array($this->data['order_status'], ['Failure', 'Aborted']);
    }

    /**
     * Check if payment is pending
     */
    public function isPending()
    {
        return isset($this->data['order_status']) && 
               in_array($this->data['order_status'], ['Pending', 'Processing']);
    }

    /**
     * Get payment status
     */
    public function getStatus()
    {
        return $this->data['order_status'] ?? 'Unknown';
    }

    /**
     * Get payment amount
     */
    public function getAmount()
    {
        return $this->data['amount'] ?? $this->order->total->amount();
    }

    /**
     * Get currency
     */
    public function getCurrency()
    {
        return $this->data['currency'] ?? 'INR';
    }

    /**
     * Get failure reason
     */
    public function getFailureReason()
    {
        return $this->data['failure_message'] ?? $this->data['status_message'] ?? 'Unknown error';
    }

    /**
     * Get all response data
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * Convert to array
     */
    public function toArray()
    {
        $baseArray = parent::toArray();
        
        // Add CCAvenue specific data
        $ccavenueData = [
            'encRequest' => $this->data['encRequest'] ?? '',
            'access_code' => $this->data['access_code'] ?? '',
            'merchant_id' => $this->data['merchant_id'] ?? '',
            'action_url' => $this->data['action_url'] ?? '',
            'amount' => $this->getAmount(),
            'currency' => $this->getCurrency(),
            'status' => $this->getStatus(),
            'transaction_reference' => $this->getTransactionReference(),
            'is_successful' => $this->isSuccessful(),
            'is_failed' => $this->isFailed(),
            'is_pending' => $this->isPending(),
        ];

        // Add failure reason if payment failed
        if ($this->isFailed()) {
            $ccavenueData['failure_reason'] = $this->getFailureReason();
        }

        return array_merge($baseArray, $ccavenueData);
    }
}