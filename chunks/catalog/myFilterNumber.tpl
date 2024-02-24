{var $key = $table ~ $delimeter ~ $filter}
<div class="col-md-6 filter_slider filter_block">
    <label for="mse2_{$key}_{$idx}" class="d-flex align-items-center">
        {$title}
        <input type="text" name="{$filter_key}" id="mse2_{$key}_{$idx}" value="{$value}"
            data-current-value="{$current_value}" class="form-control ml-1" min="0" />
    </label>
</div>