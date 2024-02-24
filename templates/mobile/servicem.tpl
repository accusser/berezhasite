{extends 'file:templates/mobile/index.tpl'}
{block 'menu'}
{include 'file:chunks/mobile/menu.tpl'} 
{/block}
{block 'content'}
    <div class="page-content-wrapper py-3">
      <div class="container">
        <div class="card">
          <div class="card-body">
            <div class="about-content-wrap dir-rtl"><img class="mb-3" src="{$_modx->resource.image}" alt="">
              
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="internet-connection-status" id="internetStatus"></div>
{/block}