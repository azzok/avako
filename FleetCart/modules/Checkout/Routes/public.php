<?php

use Illuminate\Support\Facades\Route;

Route::get('checkout', 'CheckoutController@create')->name('checkout.create');
Route::post('checkout', 'CheckoutController@store')->name('checkout.store');

Route::any('checkout/{orderId}/complete', 'CheckoutCompleteController@store')
    ->name('checkout.complete.store')
    ->withoutMiddleware(\FleetCart\Http\Middleware\VerifyCsrfToken::class);
Route::get('checkout/complete', 'CheckoutCompleteController@show')->name('checkout.complete.show');

Route::any('checkout/{orderId}/payment-canceled', 'PaymentCanceledController@store')->name('checkout.payment_canceled.store')
    ->withoutMiddleware(\FleetCart\Http\Middleware\VerifyCsrfToken::class);

Route::post('/ccavenue/response', [App\Http\Controllers\CCAvenueController::class, 'handleResponse'])->name('ccavenue.response');

// CCAVenue

Route::any('/ccavenue_response/{orderId}/complete', 'CCAvenuePaymentComplateController@handleResponse')
    ->name('ccavenue.complete.store')
    ->withoutMiddleware(\FleetCart\Http\Middleware\VerifyCsrfToken::class);


    