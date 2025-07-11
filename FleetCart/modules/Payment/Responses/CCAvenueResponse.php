<?php

namespace Modules\Payment\Responses;

class CCAvenueResponse
{
    public $order;
    public $data;

    public function __construct($order, $data)
    {
        $this->order = $order;
        $this->data = $data;
    }

    // Implement any methods you need to parse or present the response
}