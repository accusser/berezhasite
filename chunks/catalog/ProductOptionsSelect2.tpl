{foreach $options as $name => $values}
    <div class="form-group align-items-center col-8 offset-2">
        <label class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0" for="option_{$name}">{('ms2_product_' ~ $name) | lexicon}:</label>

            <select name="options[{$name}]" class="form-control" id="option_{$name}" style="border: 0px solid #ced4da;">
                {foreach $values as $value}
                    <option value="{$value}">{$value}</option>
                {/foreach}
            </select>

</div>
{/foreach}