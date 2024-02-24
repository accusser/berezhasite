{extends 'file:templates/mobile/index.tpl'}

{block 'content'}
    <div class="page-content-wrapper py-3">
      {include 'file:chunks/mobile/searchblock.tpl'}   
      <br>
      <div class="container">
        <div class="card">
          <div class="card-body">
            <div class="about-content-wrap dir-rtl"><img class="mb-3" src="{$_modx->resource.image}" alt="">
              <p>{$_modx->resource.content}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="internet-connection-status" id="internetStatus"></div>
{/block}