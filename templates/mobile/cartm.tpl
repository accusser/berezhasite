{extends 'file:templates/mobile/index.tpl'} 
    {block 'content'}
    <div class="page-content-wrapper">
      <div class="container">
        <div class="cart-wrapper-area py-3">
            
          <div class="cart-table card mb-3">
            <div class="table-responsive card-body">
                [[!msCart?
                	&tpl=`msCartM`
                ]]
            </div>
          </div>
          <div class="card coupon-card mb-3">
            <div class="card-body">
          	  {'!msOrder' | snippet : [
        		'tpl' => '@FILE chunks/mobile/msOrderM.tpl',
        	  ]} 
          	  {'!msGetOrder' | snippet}
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="internet-connection-status" id="internetStatus"></div>
    {/block}