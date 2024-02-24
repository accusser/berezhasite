{if 'template' | resource == '1'}
    <div class="header-area" id="headerArea">
      <div class="container h-100 d-flex align-items-center justify-content-between d-flex rtl-flex-d-row-r">
        <!-- Logo Wrapper -->
        <div class="logo-wrapper"><a href="{$_modx->config.site_url}"><img src="{$_modx->config.site_url}assets/images/logom.png" alt="{'site_name' | config}"></a></div>
        <div class="navbar-logo-container d-flex align-items-center">
         {* 
          {'BabelLinks' | snippet : [    
    		'showCurrent' => '1',
    		'tpl' => '@FILE chunks/babelLinksTpl.tpl',
    	  ]}           
    	  *}
<!--div class="nice-select right small2 border-0" tabindex="0">
    <span class="current">ru</span>
    <ul class="list">
          {'BabelLinks' | snippet : [    
    		'showCurrent' => '1',
    		'tpl' => '@FILE chunks/mobile/babelLinksTpl.tpl',
    	  ]}        

        <li data-value="1" class="option"><a href="[[!+url]]" class="[[+cultureKey]] [[+active:notempty=`[[+active]]`]]">Newest</a></li>
        <li data-value="2" class="option">Popular</li>
        <li data-value="3" class="option">Ratings</li>
        </ul>
        </div-->    	  
           {'!msMiniCart' | snippet : [ 
    		'tpl' => '@FILE chunks/mobile/CartMiniM.tpl',
    	  ]}     	  
          <div class="user-profile-icon ms-2" hidden><a href="profile.html"><img src="assets/mobile/img/bg-img/9.jpg" alt=""></a></div>
          <div class="suha-navbar-toggler ms-2" data-bs-toggle="offcanvas" data-bs-target="#suhaOffcanvas" aria-controls="suhaOffcanvas">
            <div><span></span><span></span><span></span></div>
          </div>
        </div>
        
      </div>


    </div>
    {else}
    <div class="header-area" id="headerArea">
      <div class="container h-100 d-flex align-items-center justify-content-between rtl-flex-d-row-r">
      
        <div class="back-button me-2"><a href="{'site_url' | config}"><i class="fa-solid fa-arrow-left-long"></i></a></div>
       
        <div class="page-heading">
          <h6 class="mb-0">{$_modx->resource.pagetitle}</h6>
        </div>
        {if $_modx->resource.template in list [5, 38, 73, 34, 60, 33]}
                <div class="filter-option ms-2" data-bs-toggle="offcanvas" data-bs-target="#suhaFilterOffcanvas" aria-controls="suhaFilterOffcanvas"><i class="fa-solid fa-sliders"></i></div>
        {else}
                <div class="suha-navbar-toggler ms-2" data-bs-toggle="offcanvas" data-bs-target="#suhaOffcanvas" aria-controls="suhaOffcanvas">
                  <div><span></span><span></span><span></span></div>
                </div>
        {/if}   
      </div>
    </div>
    {/if} 
