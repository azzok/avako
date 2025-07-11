<?php 

// config/ccavenue.php
return [
    'merchant_id' => env('CCAVENUE_MERCHANT_ID', ''),
    'access_code' => env('CCAVENUE_ACCESS_CODE', ''),
    'working_key' => env('CCAVENUE_WORKING_KEY', ''),
    'redirect_url' => env('CCAVENUE_REDIRECT_URL', 'https://yourdomain.com/payment/ccavenue/response'),
    'cancel_url' => env('CCAVENUE_CANCEL_URL', 'https://yourdomain.com/payment/ccavenue/cancel'),
];
