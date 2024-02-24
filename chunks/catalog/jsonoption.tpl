{foreach $options as $name => $values}
{
"@type": "PropertyValue",
"name": "{('ms2_product_' ~ $name) | lexicon}",
"value": "{foreach $values as $value} {$value} {/foreach}"
},
{/foreach}
