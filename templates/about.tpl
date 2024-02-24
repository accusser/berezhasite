{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
          <span>{$_modx->resource.pagetitle}</span>
        </h1>
        {$_modx->resource.content}
      </div>
    </div>
  </div>
</section>
{/block}
{block 'script'}
{/block}