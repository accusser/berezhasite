{foreach $options as $name => $values}
<p class="m-0">{('ms2_product_' ~ $name) | lexicon}: <strong>
    <a href="{$id|resource:'parent'|url}" class="text-dark">
                {foreach $values as $value}
                    {$value}
                {/foreach} 
    </a></strong></p>
{/foreach}    