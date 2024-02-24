{extends 'file:templates/mobile/index.tpl'}
   {block 'menu'}
    {include 'MenuM'} 
    {/block}
{block 'content'}
    <div class="page-content-wrapper">
      {include 'file:chunks/mobile/searchblock.tpl'}   
      <br>    
      <div class="blog-details-post-thumbnail" style="background-image: url('[[*main_news_img:phpthumbon=`w=387&h=218&zc=1$f=jpg`]]')">
        <div class="container">
          <div class="post-bookmark-wrap">

          </div>
        </div>
      </div>
      <div class="product-description pb-3">
        <div class="product-title-meta-data bg-white mb-3 py-3 dir-rtl">
          <div class="container">
            <h5 class="post-title">{$_modx->resource.pagetitle}</h5>
          </div>
        </div>
        <div class="post-content bg-white py-3 mb-3 dir-rtl">
          <div class="container">
          {$_modx->resource.content}
          </div>
        </div>
      </div>
    </div>
{/block}