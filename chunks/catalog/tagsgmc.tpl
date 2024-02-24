{foreach $options as $name => $values}
{('ms2_product_' ~ $name) | lexicon}
      {foreach $values as $value} {$value} {/foreach}
{/foreach}
