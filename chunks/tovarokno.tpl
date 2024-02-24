<div class="col-12 col-sm-6 col-md-3 mb-3 px-2">
  <div class="product text-center px-2">
    {var $productimage = 'phpthumbof' | snippet : ['input' => $_pls['product_image'], 'options' =>
    'h=200&f=jpg&bg=ffffff']}
    <a href="{$uri}" class="clr3"><img src="{$productimage}" alt="{$pagetitle}" class="img-fluid"></a>
    <div class="product-info">
      <p class="font-weight-bold text-uppercase h4"><a href="{$uri}" class="clr3" title="{$pagetitle}">
          {'getLocalizatorField' | snippet : [ 'resource_id' => $id, 'field' => 'pagetitle' ]}</a></p>
      <a href="{$uri}" class="product-link">{$localizator_lz_from} {$_pls['minwindprice']} грн.</a>
    </div>
  </div>
</div>