{foreach $options as $name => $values}
<p class="m-0">
    {('ms2_product_' ~ $name) | lexicon}:
    <strong>
        {foreach $values as $value} {$value} {/foreach}
    </strong>
</p>
{/foreach}