@extends('admin::layout')

@component('admin::components.page.header')
    @slot('title', trans('admin::resource.show', ['resource' => trans('order::orders.order')]))

    <li><a href="{{ route('admin.orders.index') }}">{{ trans('order::orders.orders') }}</a></li>
    <li class="active">{{ trans('admin::resource.show', ['resource' => trans('order::orders.order')]) }}</li>
@endcomponent

@section('content')
    <div class="order-wrapper box">
        @include('order::admin.orders.partials.order_tracking')
        @include('order::admin.orders.partials.order_and_account_information')
        @include('order::admin.orders.partials.address_information')
        @include('order::admin.orders.partials.items_ordered')
        @include('order::admin.orders.partials.order_totals')
    </div>
@endsection

@push('globals')
    @vite([
        'modules/Order/Resources/assets/admin/sass/main.scss',
        'modules/Order/Resources/assets/admin/js/main.js',
    ])
@endpush
