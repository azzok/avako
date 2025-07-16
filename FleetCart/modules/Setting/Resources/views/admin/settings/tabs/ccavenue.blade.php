<div class="row">
    <div class="col-md-8">
        {{ Form::checkbox('ccavenue_enabled', trans('setting::attributes.paypal_enabled'), "Enable CCAvenue", $errors, $settings) }}
        {{ Form::text('translatable[ccavenue_label]', trans('setting::attributes.translatable.ccavenue_label'), $errors, $settings, ['required' => true]) }}
        {{ Form::textarea('translatable[ccavenue_description]', trans('setting::attributes.translatable.ccavenue_description'), $errors, $settings, ['rows' => 3, 'required' => true]) }}

      
    </div>
</div>
