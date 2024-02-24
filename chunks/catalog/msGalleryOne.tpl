<div id="msGallery">
    {if $files?} {foreach $files as $file}
    <picture id="tovar-picture">
        <img
            src="{$file['medium']}"
            alt="{$brand} Модель {$_modx->resource.pagetitle}"
            id="tovar-img"
            class="shk-image"
            alt="{$brand} Модель {$_modx->resource.pagetitle}"
        />
    </picture>

    {/foreach} {else}
    <img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}" srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x" alt="" title="" />
    {/if}
</div>
