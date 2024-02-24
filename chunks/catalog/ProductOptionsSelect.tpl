{foreach $options as $name => $values}
  <div class="flash-sale-panel mb-3 py-3">
                <div class="container">
                    <div class="sales-offer-content d-flex align-items-end justify-content-between row">
    <div class="form-group row align-items-center col-12">
        <label class="mb-1 font-weight-bold" for="option_{$name}">{('ms2_product_' ~ $name) | lexicon}:</label>

            <select name="options[{$name}]" class="form-control" id="option_{$name}">
                {foreach $values as $value}
                    <option value="{$value}">{$value}</option>
                {/foreach}
            </select>

</div>

                    </div>
                </div>
            </div>
{/foreach}