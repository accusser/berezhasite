{foreach $options as $name => $values}
<div class="row px-3 pb-4 pt-3">
    <h5 class="w-100 mb-0 font-weight-bold text-uppercase clr3">{('ms2_product_' ~ $name) | lexicon}:</h5>
    <div class="pt-3">
        {foreach $values as $value}
        <div class="checkbox-filter">
            <input type="checkbox" name="options[{$name}]" value="{$value}" id="{$value}" class="hidden-checkbox">
            <label for="{$value}">{$value} </label>
        </div>
        {/foreach}
    </div>
</div>
{/foreach}