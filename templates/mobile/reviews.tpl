{extends 'file:templates/mobile/index.tpl'}

{block 'content'}
    <div class="page-content-wrapper py-3">
      {include 'file:chunks/mobile/searchblock.tpl'}   
      <br>
      <div class="container">
        <div class="card">
          <div class="card-body" id="pdopage">
            <div class="about-content-wrap dir-rtl rows">
              <p>
{if $_modx->context.key == 'web'}
        {'!pdoPage' | snippet : [    
		'threads' => '*',
		'limit' => '10',
		'tpl' => 'tpl.ecMessages.RowALLMobile',
		'resourceFields' => 'id',
		'element' => 'ecMessages',
		'ajax' => '1',
		'ajaxMode' => 'button',
		
	  ]}  

            <div class="row pb-4">
                <div class="col-lg-8 offset-lg-2 ">
                    <div class="pagination">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>	  
{else}
        {'!pdoPage' | snippet : [    
		'threads' => '*',
		'limit' => '10',
		'tpl' => 'tpl.ecMessages.RowALLMobile',
		'resourceFields' => 'id',
		'element' => 'ecMessages',
	  ]}  
            <div class="row pb-4">
                <div class="col-lg-8 offset-lg-2 ">
                    <div class="pagination">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>	  
{/if}                  
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="internet-connection-status" id="internetStatus"></div>
{/block}