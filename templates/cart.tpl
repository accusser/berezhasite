{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 mx-auto col-8 section-header text-center"><span>{$_modx->resource.pagetitle}</span></h1>
        {$_modx->resource.content}
        <div class="shopkeeper">
          {'!msCart' | snippet : [
          'tpl' => '@FILE chunks/msCart.tpl',
          ]}
        </div>
      </div>
    </div>
    <div class="row pt-3 pb-5">
      {'!msOrder' | snippet : [
      'tpl' => '@FILE chunks/msOrder.tpl',
      ]}
    </div>
    <div class="row pt-5">
      <div class="article-content col-12">
        <div class="shopkeeper">
          {'!msGetOrder' | snippet : [
          'tpl' => '@FILE chunks/msGetOrder.tpl',
          ]}
        </div>
      </div>
    </div>
  </div>
</section>
{/block}