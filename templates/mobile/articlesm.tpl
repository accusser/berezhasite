{extends 'file:templates/mobile/index.tpl'}
{block 'content'}
    <div class="page-content-wrapper">
      {include 'file:chunks/mobile/searchblock.tpl'}   
      <br>    
      <div class="top-products-area py-3">
        <div class="container">
          <div class="section-heading d-flex align-items-center justify-content-between rtl-flex-d-row-r">
            <h6>{'pagetitle' | resource}</h6>
            <div class="layout-options">
            </div>
          </div>
          <div class="row g-2 rtl-flex-d-row-r">
               {'!pdoPage' | snippet : [    
        		'parents' => '',
        		'limit' => '2100',
        		'tpl' => '@FILE chunks/mobile/ArticleM.tpl',
        		'includeTVs' => 'newstextpreview,main_news_img',
        		'includeContent' => '1',
        		'processTVs' => '1',
        		'sortby' => 'menuindex',
        	  ]}           
          </div>
        </div>
      </div>
    </div>
{/block}    