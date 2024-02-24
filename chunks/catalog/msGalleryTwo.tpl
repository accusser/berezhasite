
    {if $files?}
            {foreach $files as $file}
                   
<a href="#" data-img="{$file['url']}" width="450" height="450" class="product_colors color-switcher [[+idx:is=`1`:then=`active`:else=``]]"
title="{if ('localizator_key' | option) == 'uk'}[[+descriptionuk]]{else}[[+description]]{/if}">
<img src="{$file['small']}" alt="{$brand} Модель {$_modx->resource.pagetitle}" width="180" height="180" loading="lazy">
    <span>{$file['name']}{if ('localizator_key' | option) == 'uk'}[[+descriptionuk]]{else}[[+description]]{/if}</span>
</a>
            {/foreach}
     
    {else}
        <img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}"
            srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x"
            alt="" title=""/>
    {/if}

