<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="{$_modx->config.cultureKey}">
  <head>
    {include 'file:chunks/mobile/headm.tpl'}   
  </head>
  <body>
    <!--div class="preloader" id="preloader">
      <div class="spinner-grow text-secondary" role="status">
        <div class="sr-only"></div>
      </div>
    </div-->      
    {include 'file:chunks/mobile/headerm.tpl'} 
    {block 'menu'}
    {if $_modx->context.key == 'web'}  
    {include 'file:chunks/mobile/menu.tpl'} 
    {else}
    {include 'file:chunks/mobile/menu-uk.tpl'} 
    {/if}
    {/block}
    {block 'content'}
    <div class="page-content-wrapper">
    {include 'file:chunks/mobile/searchblock.tpl'}   
      <div class="hero-wrapper">
        <div class="container">
          <div class="pt-3">
            <!-- Hero Slides-->
            <div class="hero-slides owl-carousel">
              <!-- Single Hero Slide-->
 [[pdoResources? 
   &tpl=`@FILE chunks/mobile/SliderMTpl.tpl`          
   &limit=`5`       
   &parents=`0`         
   &resources=`[[!BabelTranslation? &resourceId=`19,3,6972,7308` &contextKey=`[[*context_key]]`]]`      
   &includeTVs=`imgcat,image`   
   &depth=`0`         
   &processTVs=`1`      
   ]]                
            </div>
          </div>
        </div>
      </div>
      <!-- Product Catagories -->
      <div class="product-catagories-wrapper py-3">
        <div class="container">
          <div class="row g-2 rtl-flex-d-row-r">
          {'pdoMenu' | snippet : [    
    		'parents' => '2',
    		'level' => '1',
    		'includeTVs' => 'image',
    		'tpl' => '@FILE chunks/mobile/cat.tpl',
    		'tplOuter' => '@INLINE {$wrapper}',
    	  ]}               
          </div>
        </div>
      </div>
      <!-- Flash Sale Slide -->
      <div class="flash-sale-wrapper">
        <div class="container">
          <div class="section-heading d-flex align-items-center justify-content-between rtl-flex-d-row-r">
            <h6 class="d-flex align-items-center rtl-flex-d-row-r"><i class="fa-solid fa-bolt-lightning me-1 text-danger lni-flashing-effect"></i>{'tops' | config}</h6>
          </div>
          <!-- Flash Sale Slide-->
          <div class="flash-sale-slide owl-carousel">
{if $_modx->context.key == 'web'}
{'msProducts' | snippet : [ 
'parents' => '7308', 
'limit' => '20', 
'where' => ['Data.popular' => 1],
'tpl' => '@FILE chunks/mobile/BrandMTpl.tpl', 
'includeTVs' => 'titletovar',
]}
{else}
{'msProducts' | snippet : [ 
'parents' => '16350', 
'limit' => '20', 
'where' => ['Data.popular' => 1],
'tpl' => '@FILE chunks/mobile/BrandMTpl.tpl', 
'includeTVs' => 'titletovar',
]}
{/if}
          </div>
        </div>
      </div>

      <div class="top-products-area py-3">
        <div class="container">
          <div class="section-heading d-flex align-items-center justify-content-between dir-rtl">
            <h6>{'vd' | config}</h6>
            <a class="btn p-0" href="{if $_modx->context.key == 'web'}{19 | url}{else}{12661 | url}{/if}">{'viewall' | config}
            <i class="ms-1 fa-solid fa-arrow-right-long"></i></a>
          </div>
          <div class="row g-2">
{if $_modx->context.key == 'web'}
{'msProducts' | snippet : [ 
'parents' => '19', 
'limit' => '6', 
'where' => ['Data.sklad' => 1],
'tpl' => '@FILE chunks/mobile/TovarMTpl.tpl', 
'includeTVs' => 'titletovar',
]}   
{else}
{'msProducts' | snippet : [ 
'parents' => '12661', 
'limit' => '6', 
'where' => ['Data.sklad' => 1],
'tpl' => '@FILE chunks/mobile/TovarMTpl.tpl', 
'includeTVs' => 'titletovar',
]} 
{/if}
          </div>
        </div>
      </div>


      <div class="featured-products-wrapper py-3">
        <div class="container">
          <div class="section-heading d-flex align-items-center justify-content-between dir-rtl">
            <h6>{'md' | config}</h6>
            <a class="btn p-0" href="{if $_modx->context.key == 'web'}{3 | url}{else}{12656 | url}{/if}">{'viewall' | config}<i class="ms-1 fa-solid fa-arrow-right-long"></i></a>
          </div>
          <div class="row g-2">
{if $_modx->context.key == 'web'}
{'msProducts' | snippet : [ 
'parents' => '3', 
'limit' => '6', 
'tpl' => '@FILE chunks/mobile/TovarMTpl.tpl', 
'includeTVs' => 'titletovar',
]}   
{else}
{'msProducts' | snippet : [ 
'parents' => '12656', 
'limit' => '6', 
'tpl' => '@FILE chunks/mobile/TovarMTpl.tpl', 
'includeTVs' => 'titletovar',
]} 
{/if}
          </div>
        </div>
      </div>

    </div>
    {/block}
    <div class="internet-connection-status" id="internetStatus"></div>
    {include 'file:chunks/mobile/footerm.tpl'}
    {include 'file:chunks/mobile/modalm.tpl'} 
    {block 'script'} 
    {/block}
    {include 'file:chunks/mobile/scriptsm.tpl'}
  </body>
</html>