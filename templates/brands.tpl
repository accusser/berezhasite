{extends 'file:templates/index.tpl'}
{block 'content'}
<div class="article-section container py-5">
  {'PageBlocks' | snippet : [
  'context' => $_modx->context.key,
  'cultureKey' => $_modx->config.cultureKey,
  ]}
</div>
<div class="bg2">
  <article class="article-section container">
    <div class="row py-5">
      <div class="article-content col-12 col-md-10 mx-auto sf_content">
        {$_modx->resource.content}
      </div>
    </div>
  </article>
</div>
{/block}