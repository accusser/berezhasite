<div class="col-12 col-sm-6 col-md-4 mb-3 px-2">
  <div class="product text-center">
    <a href="{$uri}" class="clr3">
      {if $thumb?}
      <picture>
        <source srcset="{$thumb}" type="image/webp">
        <source srcset="{$thumb}" type="image/jpg">
        <img src="{$thumb}" alt="{$pagetitle}" class="img-fluid">
      </picture>
      {else}
      <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
        srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x" class="mw-100"
        alt="{$pagetitle}" title="{$pagetitle}" />
      {/if}
    </a>
    <div class="product-info">
      <p class="font-weight-bold text-uppercase h4"><a href="{$uri}" class="clr3" title="{$pagetitle}"> {$pagetitle}</a>
      </p>

      <p class="price clr1 font-weight-bold">{$price} грн.</p>
      <a href="{$uri}" class="product-link">{'ms2_frontend_add_to_cart' | lexicon}</a>
    </div>
  </div>
</div>