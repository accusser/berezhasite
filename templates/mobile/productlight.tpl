{extends 'file:templates/mobile/index.tpl'}
    {block 'content'}
    <div class="page-content-wrapper">
      <div class="product-slide-wrapper">
     [[msGallery?
    	&tpl=`tpl.msGalleryNewMobile`
    	&product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]`
     ]]  
<!--a class="video-btn shadow-sm" id="singleProductVideoBtn" href="https://www.youtube.com/watch?v=lFGvqvPh5jI"><i class="fa-solid fa-play"></i></a-->
      </div>
      <div class="product-description pb-3">
        <form class="ms2_form" method="post">
        <input type="hidden" name="id" value="[[*id]]"/>            
        <div class="product-title-meta-data bg-white mb-3 py-3">
          <div class="container d-flex justify-content-between rtl-flex-d-row-r">
            <div class="p-title-price">
              <h5 class="mb-1">{$_modx->resource.pagetitle}</h5>
              <p class="sale-price mb-0 lh-1">[[+price:is=`0`:then=`[[*context_key:is=`web`:then=`Цена по запросу`:else=`Ціна за запитом`]] `:else=`{$price} грн.`]]<span>
                    [[+old_price:gt=`0`:then=`
                    <span class="old_price ml-2">[[+old_price]] [[%ms2_frontend_currency]]</span>
                    `:else=``]]
              </span></p>
            </div>
            <div class="p-wishlist-share">
                <!--a href="wishlist-grid.html"><i class="fa-solid fa-heart"></i></a-->
            </div>
          </div>
          <!-- Ratings-->
          <div class="product-ratings">
            <div class="container d-flex align-items-center justify-content-between rtl-flex-d-row-r">
              <div class="ratings">
                      {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $_modx->resource.id, 'contextKey' => 'uk']}
                    {'!ecThreadRating' | snippet : ['thread' => 'resource-' ~ $thread]}                
                  </div>
              <div class="total-result-of-ratings"><span>{'!ecMessagesCount' | snippet : ['thread' => 'resource-' ~ $thread]}</span><span>{'reviews' | config}</span></div>
            </div>
          </div>
        </div>
        <!-- Flash Sale Panel-->
        <!--div class="flash-sale-panel bg-white mb-3 py-3">
          <div class="container">

            <div class="sales-offer-content d-flex align-items-end justify-content-between">

              <div class="sales-end">
                <p class="mb-1 font-weight-bold"><i class="fa-solid fa-bolt-lightning lni-flashing-effect text-danger"></i> Flash sale end in</p>

                <ul class="sales-end-timer ps-0 d-flex align-items-center" data-countdown="2024/01/01 14:21:37">
                  <li><span class="days">0</span>d</li>
                  <li><span class="hours">0</span>h</li>
                  <li><span class="minutes">0</span>m</li>
                  <li><span class="seconds">0</span>s</li>
                </ul>
              </div>
              <div class="sales-volume text-end">
                <p class="mb-1 font-weight-bold">82% Sold Out</p>
                <div class="progress" style="height: 6px;">
                  <div class="progress-bar bg-warning" role="progressbar" style="width: 82%;" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
        </div-->
        <!-- Selection Panel-->
        <div class="selection-panel bg-white mb-3 py-3">
          <div class="container d-flex align-items-center justify-content-between">
            <!-- Choose Color-->
            <div class="choose-color-wrapper">
                        {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/ProductOptions.tpl',
                	   ]}                                 
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'ignoreOptions' => 'notice',
                		'options' => 'article,brand,filter_material,product_wood,otdelka,made_in,available',
                		'tpl' => '@FILE chunks/catalog/msOptionsTags.tpl',
                	   ]}             
            </div>

          </div>
        </div>
      
        <div class="cart-form-wrapper bg-white mb-3 py-3">
          <div class="container cart-form">
              <div class="order-plus-minus d-flex align-items-center">
                <div class="quantity-button-handler">-</div>
                <input type="text" name="count" id="product_price" class="form-control cart-quantity-input" value="1"/>
                <div class="quantity-button-handler">+</div>
              </div>
            <button type="submit" class="btn btn-danger ms-3 w-100" name="ms2_action" value="cart/add">
                [[%ms2_frontend_add_to_cart]]
            </button>              
          </div>
          <hr>
<div class="row align-items-center">
{if $_modx->context.key == 'web'}
                                    <div class="col-xl-4 col-lg-6 col-md-12 col-sm-10">
                                        <div class="container d-flex text-center">
                                            <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden />
<button class="btn btn-warning btn-lg col-12" type="button" id="purchase-btn" id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()"  data-fancybox="" href="#oneclick"

    >
        Купить в 1 клик    </button>                                            
                                        </div>
                                    </div>
{else}
                                    <div class="mb-3 py-3">
                                        <div class="d-flex">
                                            <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden />
    <button class="btn btn-warning btn-lg w-100" type="button"  id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()"  data-fancybox="" href="#oneclick"

    >
        Купити в 1 клік    </button> 
                                        </div>
                                    </div>
{/if}                               

                               
                            </div>          
        </div>
        </form>
        <div class="p-specification bg-white mb-3 py-3">
          <div class="container">
            <p class="mb-0">[[*content]]</p>
          </div>
        </div>
        <div class="pb-3"></div>
        <!-- Related Products Slides-->
        <div class="related-product-wrapper bg-white py-3 mb-3">
          <div class="container">
            <div class="section-heading d-flex align-items-center justify-content-between rtl-flex-d-row-r">
              <h6>
                    {if $_modx->context.key == 'web'}
                        Вас может заинтересовать
                        {else}
                        Вас може зацікавити
                    {/if} 
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/Tags.tpl',
                	   ]}                    
              </h6>
            </div>
            <div class="related-product-slide owl-carousel">
                {'msProducts' | snippet : [
                    'snippet' => 'msProducts',
                    'parents' => $_modx->resource.parent,
                    'resources' => '-[[*id]]',
                    'tpl' => '@FILE chunks/mobile/TovarMTplRelated.tpl',
                    'limit' => 3,
                    'sortby' => 'RAND()'
                ]}                
            </div>
          </div>
        </div>
        <!-- Rating & Review Wrapper -->
        <!--div class="rating-and-review-wrapper bg-white py-3 mb-3 dir-rtl">
          <div class="container">
            <h6>Ratings &amp; Reviews</h6>
            <div class="rating-review-content">
              <ul class="ps-0">
                <li class="single-user-review d-flex">
                  <div class="user-thumbnail"><img src="img/bg-img/7.jpg" alt=""></div>
                  <div class="rating-comment">
                    <div class="rating"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                    <p class="comment mb-0">Very good product. It's just amazing!</p><span class="name-date">Designing World 12 Dec 2022</span><a class="review-image mt-2 border rounded" href="img/product/3.png"><img class="rounded-3" src="img/product/3.png" alt=""></a>
                  </div>
                </li>
                <li class="single-user-review d-flex">
                  <div class="user-thumbnail"><img src="img/bg-img/8.jpg" alt=""></div>
                  <div class="rating-comment">
                    <div class="rating"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                    <p class="comment mb-0">Very excellent product. Love it.</p><span class="name-date">Designing World 8 Dec 2022</span><a class="review-image mt-2 border rounded" href="img/product/4.png"><img class="rounded-3" src="img/product/4.png" alt=""></a><a class="review-image mt-2 border rounded" href="img/product/6.png"><img class="rounded-3" src="img/product/6.png" alt=""></a>
                  </div>
                </li>

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
        </div-->
      </div>
    </div>
    <!-- Internet Connection Status-->
    <div class="internet-connection-status" id="internetStatus"></div>
{/block}