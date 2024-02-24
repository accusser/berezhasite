<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="{$_modx->config.cultureKey}">
<head>
  {include 'file:chunks/head.tpl'}
</head>
<body>
  {include 'file:chunks/gtm.tpl'}
  <div class="page-wrapper d-flex flex-column">
    {include 'file:chunks/header.tpl'}
    <section class="article-section container-fluid">
      <div class="container">
        <div class="row pt-5">
          <div class="article-content col-12">
            <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
              <span>{$_modx->resource.pagetitle}</span></h1>
            {$_modx->resource.content}
          </div>
        </div>
      </div>
    </section>
    {if $_modx->context.key == 'web'}
    {include 'file:chunks/footerru.tpl'}
    {else}
    {include 'file:chunks/footeruk.tpl'}
    {/if}
  </div>
  {include 'file:chunks/scripts.tpl'}
</body>
</html>