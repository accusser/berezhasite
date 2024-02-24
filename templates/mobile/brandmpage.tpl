{extends 'file:templates/mobile/index.tpl'}
    {block 'menu'}
    {/block}
    {block 'content'}
    <div class="page-content-wrapper pb-3">
      <!-- Vendor Details Wrap -->
      <div class="vendor-details-wrap bg-img bg-overlay py-4" style="background-image: url('[[*image]]')">
        <div class="container">
          <div class="d-flex align-items-start">
            <!-- Vendor Profile-->
            <div class="vendor-profile shadow me-3 mt-1">
              <figure class="m-0"><img src="[[*logomin]]" alt=""></figure>
            </div>
            <!-- Vendor Info-->
            <div class="vendor-info">
              <h5 class="vendor-title text-white">[[*pagetitle]]</h5>
              <p class="mb-1 text-white"><i class="fa-solid fa-location-dot me-1"></i>Dhaka, Bangladesh</p>
              <div class="ratings lh-1"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><span class="text-white">(99% Positive Seller)</span></div>
            </div>
          </div>
          <!-- Vendor Basic Info-->
          <div class="vendor-basic-info d-flex align-items-center justify-content-between mt-4">
            <div class="single-basic-info">
              <div class="icon"><i class="fa-solid fa-shield"></i></div><span>Trusted Seller</span>
            </div>
            <div class="single-basic-info">
              <div class="icon"><i class="fa-solid fa-bag-shopping"></i></div><span>100+ Items</span>
            </div>
            <div class="single-basic-info">
              <div class="icon"><i class="fa-solid fa-ship"></i></div><span>98% Ship On Time</span>
            </div>
          </div>
        </div>
      </div>
      <!-- Vendor Tabs -->
      <div class="vendor-tabs">
        <div class="container">
          <ul class="nav nav-tabs mb-3" id="vendorTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">О бренде</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="products-tab" data-bs-toggle="tab" data-bs-target="#products" type="button" role="tab" aria-controls="products" aria-selected="false">Продукция бренда [[*pagetitle]]</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews" type="button" role="tab" aria-controls="reviews" aria-selected="false">Рейтинг &amp; Отзывы</button>
            </li>
          </ul>
        </div>
      </div>
      <div class="tab-content" id="vendorTabContent">
        <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
          <div class="container">
            <div class="card">
              <div class="card-body about-content-wrap dir-rtl">
                <p>[[*content]]</p>
                <div class="contact-btn-wrap text-center">
                  <p class="mb-2">For more information, submit a request.</p><a class="btn btn-primary w-100" href="contact.html"><i class="fa-solid fa-life-ring me-2"></i>Submit A Query</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane fade show active" id="products" role="tabpanel" aria-labelledby="products-tab">
          <div class="container">
            <div class="row g-2 rtl-flex-d-row-r">
         	  {'!mFilter2' | snippet : [
        		'paginator' => 'pdoPage@new',
        		'limit' => '21',
        		'parents' => '0',
        		'class' => 'msProduct',
        		'element' => 'msProducts',
        	    'optionFilters' => '{"brand":"' ~$_modx->resource.pagetitle~ '"}',
        		'setMeta' => '1',
        		'tplOuter' => '@FILE chunks/catalog/catalogproducts.tpl',
        		'tpls' => '@FILE chunks/catalog/TovarTpl.tpl',
        		'snippet' => 'msProducts',
        		'includeTVs' => 'titletovar,brand',
        		'showUnpublished' => '0',
        		'sort' => 'publishedon:DESC',
        		'suggestions' => '0',
        		'suggestionsMaxFilters' => '10000',
        		'showlog' => '0',
        		'context' => $_modx->context.key,
    	        'cultureKey' => $_modx->config.cultureKey,
                'filters' => '
         		    ms|price:number,
         		    msoption|filter_material:default,
         		    msoption|color:default,
        			msoption|tags:default,
        			msoption|available:default,
        			msoption|polotno_type:default,
        			ms|stal,
        			msoption|roz:default,
        			
        			msoption|otdelka:default,
        			
        			msoption|glass:default,
        			msoption|style:default,
        			ms|made_in:default,
        			
                                                  ',
                  'aliases' => '
         		    msoption|color==color,
        		    msoption|style==style,
        		    msoption|glass==steklo,
        		    msoption|brand==brand,
        		    msoption|filter_material==material,
        		    msoption|tags==collection,
        		    ms|steel==steel,
        		    msoption|available==available,
              ',
              'tplFilter.outer.default' => '@FILE chunks/catalog/myFilterOuter.tpl',
              'tplFilter.row.default' => '@FILE chunks/catalog/myFilterCheckbox2.tpl',
              'tplFilter.outer.ms|price' => '@FILE chunks/catalog/myFilterSlider.tpl',
              'tplFilter.row.ms|price' => '@FILE chunks/catalog/myFilterNumber.tpl',
        	  ]}            
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
          <!-- Rating & Review Wrapper -->
          <div class="rating-and-review-wrapper bg-white py-3 mb-3 dir-rtl">
            <div class="container">
              <div class="rating-review-content">
                <ul class="ps-0">
                  <!-- Single User Review -->
                  <li class="single-user-review d-flex">
                    <div class="user-thumbnail"><img src="img/bg-img/7.jpg" alt=""></div>
                    <div class="rating-comment">
                      <div class="rating"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                      <p class="comment mb-0">Very good product. It's just amazing!</p><span class="name-date">Designing World 12 Dec 2022</span><a class="review-image mt-2 border rounded" href="img/product/3.png"><img class="rounded-3" src="img/product/3.png" alt=""></a>
                    </div>
                  </li>
                  <!-- Single User Review -->
                  <li class="single-user-review d-flex">
                    <div class="user-thumbnail"><img src="img/bg-img/8.jpg" alt=""></div>
                    <div class="rating-comment">
                      <div class="rating"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                      <p class="comment mb-0">Very excellent product. Love it.</p><span class="name-date">Designing World 8 Dec 2022</span><a class="review-image mt-2 border rounded" href="img/product/4.png"><img class="rounded-3" src="img/product/4.png" alt=""></a><a class="review-image mt-2 border rounded" href="img/product/6.png"><img class="rounded-3" src="img/product/6.png" alt=""></a>
                    </div>
                  </li>
                  <!-- Single User Review -->
                  <li class="single-user-review d-flex">
                    <div class="user-thumbnail"><img src="img/bg-img/9.jpg" alt=""></div>
                    <div class="rating-comment">
                      <div class="rating"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                      <p class="comment mb-0">What a nice product it is. I am looking it's.</p><span class="name-date">Designing World 28 Nov 2022</span>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Ratings Submit Form-->
          <div class="ratings-submit-form bg-white py-3 dir-rtl">
            <div class="container">
              <h6>Submit A Review</h6>
              <form action="#" method="">
                <div class="stars mb-3">
                  <input class="star-1" type="radio" name="star" id="star1">
                  <label class="star-1" for="star1"></label>
                  <input class="star-2" type="radio" name="star" id="star2">
                  <label class="star-2" for="star2"></label>
                  <input class="star-3" type="radio" name="star" id="star3">
                  <label class="star-3" for="star3"></label>
                  <input class="star-4" type="radio" name="star" id="star4">
                  <label class="star-4" for="star4"></label>
                  <input class="star-5" type="radio" name="star" id="star5">
                  <label class="star-5" for="star5"></label><span></span>
                </div>
                <textarea class="form-control mb-3" id="comments" name="comment" cols="30" rows="10" data-max-length="200" placeholder="Write your review..."></textarea>
                <button class="btn btn-primary" type="submit">Save Review</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Internet Connection Status-->
    <div class="internet-connection-status" id="internetStatus"></div>
    {/block} 