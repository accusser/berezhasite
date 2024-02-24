{extends 'file:templates/mobile/index.tpl'}
{block 'content'}
{'!msOptionsPrice.initialize' | snippet}
<div id="msProduct" class="page-content-wrapper">
        [[msGallery?
        &product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]`
        ]]
    <div class="product-description pb-3">
        <form class="ms2_form msoptionsprice-product" method="post">
            <input type="hidden" name="id" value="[[*id]]" />
            <div class="product-title-meta-data bg-white mb-3 py-3">
                <div class="container d-flex justify-content-between rtl-flex-d-row-r">
                    <div class="p-title-price">
                        <h5 class="mb-1">{$_modx->resource.pagetitle}</h5>
                        <p class="sale-price mb-0 lh-1">
                            {if $price == '0'}
                            {if $_modx->context.key == 'web'}
                            Цена по запросу
                            {else}
                            Ціна за запитом
                            {/if}
                            {else}
                            <span class='msoptionsprice-cost msoptionsprice-[[*id]]'>[[+price]]</span> грн.
                            {/if}
                            <span>
                                [[+old_price:gt=`0`:then=`
                                <span class="old_price ml-2">[[+old_price]] [[%ms2_frontend_currency]]</span>
                                `:else=``]]
                            </span>
                        </p>
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
            {'!msOptions' | snippet : [ 'product' => $_modx->resource.id, 'options' => 'color','tpl' => '@FILE chunks/catalog/ProductOptionsSelect.tpl',]}
            {'!msOptions' | snippet : [ 'product' => $_modx->resource.id, 'options' => 'torecdver','tpl' => '@FILE chunks/catalog/ProductOptionsSelect.tpl',]}
            {'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'options' => 'pokraska','tpl' => '@FILE chunks/catalog/ProductOptionsSelect.tpl',]}

            <div class="cart-form-wrapper bg-white mb-3 py-3">
                <div class="container cart-form">
                    <div class="order-plus-minus d-flex align-items-center">
                        <div class="quantity-button-handler">-</div>
                        <input type="text" name="count" id="product_price" class="form-control cart-quantity-input" value="1" />
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
                            <button class="btn btn-warning btn-lg col-12" type="button" id="purchase-btn" id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()" data-fancybox="" href="#oneclick">
                                Купить в 1 клик </button>
                        </div>
                    </div>
                    {else}
                    <div class="mb-3 py-3">
                        <div class="d-flex">
                            <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden />
                            <button class="btn btn-warning btn-lg w-100" type="button" id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()" data-fancybox="" href="#oneclick">
                                Купити в 1 клік </button>
                        </div>
                    </div>
                    {/if}


                </div>
            </div>
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


            <div class="selection-panel bg-white mb-3 py-3">

                <div class="container d-flex align-items-center justify-content-between">
                    <div class="choose-color-wrapper">
                        {$_modx->resource.params}
                    </div>
                </div>
            </div>
        </form>
        <div class="scroll-content p-specification bg-white mb-3 py-3">
            <div class="container">
                <p class="mb-0">{$_modx->resource.content}</p>
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
        <div class="rating-and-review-wrapper bg-white py-3 mb-3 dir-rtl">
          <div class="container">
            <h6>{'rev' | config}</h6>
            <div class="rating-review-content">
              <ul class="ps-0">
            [[!ecMessages:default=`[[!++commno]]`? 	&tpl=`ecMessages.RowMobile` 
            &limit=`100` &thread=`resource-[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`uk`]]` ]]
              </ul>
            </div>
          </div>
        </div>

        <div class="ratings-submit-form bg-white py-3 dir-rtl">
          <div class="container">
        {'ecForm' | snippet : [
        	'allowedFields' => 'user_name,user_email,subject,rating,text'
        	'tplForm' => 'ecFormMobile'
        ]} 
          </div>
        </div>
        
    </div>
</div>
<!-- Internet Connection Status-->
<div class="internet-connection-status" id="internetStatus"></div>
{/block}