          <div class="col-12">
            <div class="single-vendor-wrap bg-img p-4 bg-overlay" style="background-image: url('{$_pls['tv.image']}')">
              <h5 class="vendor-title text-white">{$pagetitle}</h5>
              <div class="vendor-info">

                <div class="ratings lh-1"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><span class="text-white"></span>
                </div>
              </div>
              <a class="btn btn-warning btn-sm mt-3" href="{$uri}">
        {if $_modx->context.key == 'web'}Товары производителя{else}Товари виробника{/if}          
                <i class="fa-solid fa-arrow-right-long ms-1"></i></a>
              <div class="vendor-profile shadow">
                <figure class="m-0"><img src="{$_pls['tv.logomin']}" alt=""></figure>
              </div>
            </div>
          </div>