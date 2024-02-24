
    <div class="offcanvas offcanvas-start suha-offcanvas-wrap" tabindex="-1" id="suhaOffcanvas" aria-labelledby="suhaOffcanvasLabel">
      <button class="btn-close btn-close-white" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      <div class="offcanvas-body">
        <div class="sidenav-profile">
          <div class="user-profile"><img src="{$_modx->config.site_url}assets/image/logo-homewhite.svg" alt=""></div>
          <div class="user-info">
            <!--h5 class="user-name mb-1 text-white">[[!++site_name]]</h5-->
            
          </div>
        </div>
        <!-- Sidenav Nav-->
        [[pdoMenu?
        	&level=`2`
        	&parents=`2`
        	&tplOuter=`@INLINE <ul class="sidenav-nav ps-0">[[+wrapper]]</ul>`
        	&tplParentRow=`@INLINE <li class="suha-dropdown-menu"><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
        ]]        
        [[pdoMenu?
        	&level=`1`
        	&parents=`0`
        	&resources=`-6516`
        	&tplOuter=`@INLINE <ul class="sidenav-nav ps-0">[[+wrapper]]</ul>`
        	&tplParentRow=`@INLINE <li class="suha-dropdown-menu"><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
        ]]
          <div class="form-check form-switch mb-0">
            <label class="form-check-label text-white h6 mb-0" for="darkSwitch">Темный режим</label>
            <input class="form-check-input" id="darkSwitch" type="checkbox" role="switch">
          </div>         
      </div>
    </div>
    <!-- PWA Install Alert -->
    <!--div class="toast pwa-install-alert shadow bg-white" role="alert" aria-live="assertive" aria-atomic="true" data-bs-delay="5000" data-bs-autohide="true">
      <div class="toast-body">
        <div class="content d-flex align-items-center mb-2"><img src="/assets/mobile/img/icons/icon-72x72.png" alt="">
          <h6 class="mb-0">Add to  Screen</h6>
          <button class="btn-close ms-auto" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
        </div><span class="mb-0 d-block">Add Suha on your mobile home screen. Click the<strong class="mx-1">Add to Home Screen</strong>button &amp; enjoy it like a regular app.</span>
      </div>
    </div-->
