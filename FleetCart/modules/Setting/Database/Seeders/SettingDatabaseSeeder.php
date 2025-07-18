<?php

namespace Modules\Setting\Database\Seeders;

use Illuminate\Database\Seeder;
use Modules\Setting\Entities\Setting;

class SettingDatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::setMany([
            'supported_countries' => ['BD'],
            'default_country' => 'BD',
            'supported_locales' => ['en'],
            'default_locale' => 'en',
            'default_timezone' => 'Asia/Dhaka',
            'customer_role' => 2,
            'reviews_enabled' => true,
            'auto_approve_reviews' => true,
            'cookie_bar_enabled' => true,
            'supported_currencies' => ['USD'],
            'default_currency' => 'USD',
            'send_order_invoice_email' => false,
            'newsletter_enabled' => false,
            'search_engine' => 'mysql',
            'local_pickup_cost' => 0,
            'flat_rate_cost' => 0,
            'translatable' => [
                'store_name' => 'FleetCart',
                'pwa_direction' => 'auto',
                'free_shipping_label' => 'Free Shipping',
                'local_pickup_label' => 'Local Pickup',
                'flat_rate_label' => 'Flat Rate',
                'paypal_label' => 'PayPal',
                'paypal_description' => 'Pay via your PayPal account.',

                'ccavenue_label' => 'CCAvenue',
                'ccavenue_description' => 'CCAvenue via credit or debit card.',

                'stripe_label' => 'Stripe',
                'stripe_description' => 'Pay via credit or debit card.',
                'paytm_label' => 'Paytm',
                'paytm_description' => 'The best payment gateway provider in India for e-payment through credit card, debit card & net banking.',
                'razorpay_label' => 'Razorpay',
                'razorpay_description' => 'Pay securely by Credit or Debit card or Internet Banking through Razorpay.',
                'instamojo_label' => 'Instamojo',
                'instamojo_description' => 'CC/DB/NB/Wallets',
                'authorizenet_label' => 'Authorize.net',
                'authorizenet_description' => 'Accept payments anytime, anywhere',
                'paystack_label' => 'Paystack',
                'paystack_description' => 'Modern online and offline payments for Africa',
                'mercadopago_label' => 'Mercado Pago',
                'mercadopago_description' => 'From now on, do more with your money',
                'flutterwave_label' => 'Flutterwave',
                'flutterwave_description' => 'Endless possibilities for every business',
                'iyzico_label' => 'Iyzico',
                'iyzico_description' => 'Pay for your shopping with iyzico',
                'payfast_label' => 'Payfast',
                'payfast_description' => 'Online Payments In South Africa',
                'cod_label' => 'Cash On Delivery',
                'cod_description' => 'Pay with cash upon delivery.',
                'bank_transfer_label' => 'Bank Transfer',
                'bank_transfer_description' => 'Make your payment directly into our bank account. Please use your Order ID as the payment reference.',
                'check_payment_label' => 'Check / Money Order',
                'check_payment_description' => 'Please send a check to our store.',
            ],
            'storefront_copyright_text' => 'Copyright © <a href="{{ store_url }}">{{ store_name }}</a> {{ year }}. All rights reserved.',
        ]);
    }
}
