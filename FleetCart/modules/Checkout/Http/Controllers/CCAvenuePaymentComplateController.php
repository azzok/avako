<?php

// namespace App\Http\Controllers;
namespace Modules\Checkout\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Modules\Payment\CCAvenue\CCAvenueCrypto;


class CCAvenuePaymentComplateController
{
    private $workingKey = 'AC2F260942642728D34730B8BE54523C'; // Move to .env file
    
    public function handleResponse(Request $request)
    {
        try {
            $workingKey = config('ccavenue.working_key');

            $encResponse = $request->input('encResp');
            
            if (!$encResponse) {
                return $this->errorResponse('No encrypted response received');
            }
            
            // Decrypt the response
            $rcvdString = $this->decrypt($encResponse, $workingKey);
            
            // Parse the response
            $responseData = $this->parseResponse($rcvdString);
            
            // Get order status
            $orderStatus = $responseData['order_status'] ?? '';
            dd($orderStatus);
            // Handle different order statuses
            switch ($orderStatus) {
                case 'Success':
                    return $this->successResponse($responseData);
                case 'Aborted':
                    return $this->abortedResponse($responseData);
                case 'Failure':
                    return $this->failureResponse($responseData);
                default:
                    return $this->errorResponse('Security Error. Illegal access detected');
            }
            
        } catch (\Exception $e) {
            \Log::error('CCAvenue Response Error: ' . $e->getMessage());
            return $this->errorResponse('An error occurred while processing your payment');
        }
    }
    
    private function parseResponse($rcvdString)
    {
        $decryptValues = explode('&', $rcvdString);
        $responseData = [];
        
        foreach ($decryptValues as $pair) {
            $information = explode('=', $pair, 2);
            if (count($information) === 2) {
                $responseData[$information[0]] = $information[1];
            }
        }
        
        return $responseData;
    }
    
    private function successResponse($data)
    {
        // You can save order details to database here
        // $this->saveOrderDetails($data);
        
        return view('payment.success', [
            'message' => 'Thank you for shopping with us. Your credit card has been charged and your transaction is successful. We will be shipping your order to you soon.',
            'data' => $data
        ]);
    }
    
    private function abortedResponse($data)
    {
        return view('payment.aborted', [
            'message' => 'Thank you for shopping with us. We will keep you posted regarding the status of your order through e-mail',
            'data' => $data
        ]);
    }
    
    private function failureResponse($data)
    {
        return view('payment.failure', [
            'message' => 'Thank you for shopping with us. However, the transaction has been declined.',
            'data' => $data
        ]);
    }
    
    private function errorResponse($message)
    {
        // return view('payment.error', [
        //     'message' => $message,
        //     'data' => []
        // ]);
        dd($message);
    }
    
    private function decrypt($encryptedText, $key)
    {
        $crypto = new CCAvenueCrypto();
        $rcvdString = $crypto->decrypt($encryptedText, $key);
        return $rcvdString;
    }
    
    // Optional: Save order details to database
    private function saveOrderDetails($data)
    {
        // Example implementation
        /*
        \App\Models\Order::where('order_id', $data['order_id'] ?? '')
            ->update([
                'status' => $data['order_status'] ?? '',
                'tracking_id' => $data['tracking_id'] ?? '',
                'bank_ref_no' => $data['bank_ref_no'] ?? '',
                'payment_mode' => $data['payment_mode'] ?? '',
                'card_name' => $data['card_name'] ?? '',
                'currency' => $data['currency'] ?? '',
                'amount' => $data['amount'] ?? '',
                'trans_date' => $data['trans_date'] ?? '',
                'response_data' => json_encode($data)
            ]);
        */
    }
}