<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="{$_modx->config.cultureKey}">

  <head>
    {block 'seo'}
    {/block}      
    {include 'file:chunks/headtovar.tpl'} 
      <style>
          .linktogood {
          background: #007257;
            color: #fff;
            text-decoration: none;
            padding: .8rem 1.8rem;
            margin: .5rem 0;
            display: inline-block;
            font-weight: 700;
            text-transform: uppercase;
            font-size: .9em;
            border-radius: 2rem;
            outline: 0;
            transition: all .3s ease;
          }
          .linktogood:hover {
            color: #fff;
            text-decoration: none;
            background: #7fb8ab;
          }
          .product-content {
              max-height: 450px;
              overflow: auto;
          }
      </style>
      <style>
          .complect-price {
              height: auto;
              max-height: 0;
              overflow: hidden;
              transition: max-height .2s linear;
          }
          .complect-price.active {
              max-height: 200px;
              transition: max-height .2s linear;
          }
          .complect-price p { 
            background: #f3e3cc;
            padding: .5rem 1rem .5rem 2rem;
            border-top-left-radius: 2rem;
            border-bottom-left-radius: 2rem;
            position: relative;
          } 
          .complect-price p:before {
              content: '';
              display: block;
              width: 10px;
              height: 10px;
              position: absolute;
              top: 50%;
              left: .75rem;
              transform: translateY(-50%);
              background: #fff;
              border-radius: 50%;
          }
      </style>
      <link rel="stylesheet" href="/assets/slick/slick.css">
  </head>
  <body>
    {include 'file:chunks/gtm.tpl'} 
    
    <div class="page-wrapper d-flex flex-column">
    {include 'file:chunks/header.tpl'}   

{block 'content'}
    <article class="article-section container py-5 shk-item" id="msProduct" itemtype="http://schema.org/Product" itemscope>
                {include 'file:chunks/catalog/microCard.tpl'} 

            <form class="form-horizontal ms2_form" method="post">
                    <input type="hidden" name="id" value="{$_modx->resource.id}"/>
                    <div class="row product-page block_product" data-product="{$_modx->resource.id}">
                        <div class="col-xl-5 col-md-5 product-page-image">
[[msGallery?
	&tpl=`tpl.msGalleryNew`
	&product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]`
]]
                          <div class="row">
                            <div class="col-12 text-center">
                               
                               {'msGallery' | snippet : [
                       'limit' => '1',
                		'tpl' => '@FILE chunks/catalog/msGalleryOne.tpl',
                	   ]}                       
                            </div>
                          </div>      
                        </div>
                        
                              
                              
                        <div class="col-xl-7 col-md-7 product-page-info">
                            <div class="row">
                            <h1 class="col-12 section-header mb-4 text-left"><span class="superheader">
                                [[pdoField? &id=`[[*id]]` &top=`2` &topLevel=`2`]]  
                                 {$brand}</span>[[pdoField? &id=`[[*id]]` &top=`2` &topLevel=`3`]] 
                                 [[pdoField? &id=`[[*id]]` &top=`2` &topLevel=`4`]] Модель {$_modx->resource.pagetitle}</h1>
                            </div>
                          <div class="row">
                            <div class="col-12">
                                <p class="font-weight-bold text-nowrap ti-0 text-uppercase">
                                    {'ms2_frontend_color' | lexicon}:</p>
                                <div class="d-flex pb-3 product-page-gallery">
                                    [[!msGallery?
                                	&tpl=`@FILE chunks/catalog/msGalleryTwo.tpl`
                                	&product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]`
                                    ]]  
                                </div>
                            </div>
                            
                            <div class="col-12 col-sm-6 col-lg-6">
                              <p class="font-weight-bold text-uppercase h5">{'ms2_product_price' | lexicon} за полотно</p>
                              <p class="product-page-price font-weight-bold py-3">
                                   
                                  [[-!+kursv:is=`1`:then=`[[-!+price:replace=` ==`:mpy=`[[-!++kurs]]`]]`:else=`[[-!+price]]`]]
                                  [[!+price]]
                                  грн.</p>
                              <div class="complect-price d-flex mb-3">
                                  <p>{'ms2_product_price' | lexicon} за комплект: <span class="font-weight-bold h5 shk-price price">{$price}</span> грн.</p>
                                  
                                  <!--span class="font-weight-bold h5 shk-price price">{$_modx->resource.price}</span-->
                              </div>
                            </div>
                            <div class="col-12 col-sm-6">
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
                          
                          <!-- Раздвижные-->
                          <div class="row">
                            {if $_modx->resource.rzd_one_polotno != ''}  
                            <div class="col-12 col-sm-6">
                                <div class="select-block mb-3">
                                    <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">{$_modx->lexicon('localizator_amountofstvorok')}</p>
                                  <select class="select-berezha triggertwo">
                                      <option value="1">Одна створка</option>
                                      <option value="2">Две створки</option>
                                  </select>
                                </div>
                            </div>
                            {/if}
                            <div class="col-12 col-sm-6">
                                {if $_modx->resource.rzd_one_polotno != ''}
                                      <div class="select-block mb-3 forone active">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Одностворчатое полотно</p>
                                          [[*rzd_one_polotno:replace=`[[+id]]==[[*id]]`]]
                                      </div>
                                {/if}
                                
                                {if $_modx->resource.rzd_two_polotno != ''}
                                      <div class="select-block mb-3 fortwo">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Двустворчатое полотно</p>
                                          [[*rzd_two_polotno:replace=`[[+id]]==[[*id]]`]]
                                      </div>
                                {/if}
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-12 col-sm-6">
                                {if $_modx->resource.rzd_one_roliks != ''}
                                      <div class="select-block mb-3 forone active">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Система роликов</p>
                                        {if ('localizator_key' | option) == 'uk'}
                                         {$_modx->runSnippet('uk_render_select', [
                                              'input' => $_modx->resource.rzd_one_roliks,
                                              'name' => 'rzd_one_roliks'
                                          ])}
                                        {else}
                                          {$_modx->runSnippet('shk_render_tv', [
                                              'resourceId' => $_modx->resource.id,
                                              'input' => $_modx->resource.rzd_one_roliks,
                                              'options' => ''
                                          ])}
                                        {/if}
                                      </div>
                                {/if}
                                {if $_modx->resource.rzd_two_roliks != ''}
                                      <div class="select-block mb-3 fortwo">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Двустворчатая система роликов</p>
                                        {if ('localizator_key' | option) == 'uk'}
                                         {$_modx->runSnippet('uk_render_select', [
                                              'input' => $_modx->resource.rzd_two_roliks,
                                              'name' => 'rzd_two_roliks'
                                          ])}
                                        {else}
                                          {$_modx->runSnippet('shk_render_tv', [
                                              'resourceId' => $_modx->resource.id,
                                              'input' => $_modx->resource.rzd_two_roliks,
                                              'options' => ''
                                          ])}
                                        {/if}
                                      </div>
                                {/if}
                            </div>            
                            <div class="col-12 col-sm-6">
                                {if $_modx->resource.rzd_one_kupe_handle != ''}
                                      <div class="select-block mb-3 forone active">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Ручка-купе одностворчатой двери</p>
                                            {if ('localizator_key' | option) == 'uk'}
                                             {$_modx->runSnippet('uk_render_select', [
                                                  'input' => $_modx->resource.rzd_one_kupe_handle,
                                                  'name' => 'rzd_one_kupe_handle'
                                              ])}
                                            {else}
                                              {$_modx->runSnippet('shk_render_tv', [
                                                  'resourceId' => $_modx->resource.id,
                                                  'input' => $_modx->resource.rzd_one_kupe_handle,
                                                  'options' => ''
                                              ])}
                                            {/if}
                                      </div>
                                {/if}
                                {if $_modx->resource.rzd_two_kupe_handle != ''}
                                      <div class="select-block mb-3 fortwo">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Ручка-купе двустворчатой двери</p>
                                            {if ('localizator_key' | option) == 'uk'}
                                                 {$_modx->runSnippet('uk_render_select', [
                                                      'input' => $_modx->resource.rzd_two_kupe_handle,
                                                      'name' => 'rzd_two_kupe_handle'
                                                  ])}
                                                {else}
                                                  {$_modx->runSnippet('shk_render_tv', [
                                                      'resourceId' => $_modx->resource.id,
                                                      'input' => $_modx->resource.rzd_two_kupe_handle,
                                                      'options' => ''
                                                  ])}
                                                {/if}
                                      </div>
                                {/if}
                            
                            </div>
                          </div>  
                          <!-- Раздвижные-->
                          
                          <div class="row">
                            <div class="col-12 col-sm-6">
                                  
                            {if $_modx->resource.dverBlok_vhod != ''}
                                  <div class="select-block mb-3">
                                    <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">{$_modx->lexicon('localizator_lz_dvernoblock')}</p>
                                      
                                      [[*dverBlok_vhod:replace=`[[+id]]==[[*id]]`]]
                                    
                                  </div>
                            {/if}
                            
                            
                            </div>   
                            {if $_modx->resource.complect_vhod != ''}            
                            <div class="col-12 col-sm-6">
                                  <div class="select-block mb-3">
                                    <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">{$_modx->lexicon('localizator_lz_komplektation')}</p>
                                      {$_modx->runSnippet('uk_render_select', [
                                          'input' => $_modx->resource.complect_vhod,
                                          'name' => 'complect_vhod'
                                      ])}
                                  </div>
                            </div>        
                            {/if}
                            <div class="col-12 col-sm-6">
                            
                            {if $_modx->resource.dekor_vhod != ''}
                                  <div class="select-block mb-3">
                                    <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Декор</p>
                                      {$_modx->runSnippet('uk_render_select', [
                                          'input' => $_modx->resource.dekor_vhod,
                                          'name' => 'dekor_vhod'
                                      ])}
                                    
                                  </div>
                            {/if}
                            </div>
                            
                            <div class="col-12 col-sm-6">
                            {if $_modx->resource.ext_dvernoePolotno != ''}
                                  <div class="select-block mb-3">
                                      
                                    <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                        {'localizator_lz_dvernoepolotno' | config}
                                        </p>
                                      [[*ext_dvernoePolotno:replace=`[[+id]]==[[*id]]`]]
                                  </div>
                            {/if}
                            {if $_modx->resource.ext_korobka != ''}
                              
                              <div class="select-block mb-3">
                                <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Коробка</p>
                                     {$_modx->runSnippet('uk_render_select', [
                                          'input' => $_modx->resource.ext_korobka,
                                          'name' => 'ext_korobka'
                                      ])}
                              </div>
                            {/if}
                            </div>            
                            <div class="col-12 col-sm-6">
                                
                            {if $_modx->resource.ext_rasshiritel != ''}
                            
                              <div class="select-block mb-3">
                                <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                [[*context_key:is=`web`:then=`Расширитель`:else=`Розширювач`]] 
                                </p>
                                    {$_modx->runSnippet('uk_render_select', [
                                      'input' => $_modx->resource.ext_rasshiritel,
                                      'name' => 'ext_rasshiritel'
                                  ])}
                              </div>
                            {/if}
                            {if $_modx->resource.ext_nalichnik != ''}
                              <div class="select-block mb-3">
                                <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                    [[*context_key:is=`web`:then=`Наличник`:else=`Лиштва`]]
                                    </p>
                                    {$_modx->runSnippet('uk_render_select', [
                                          'input' => $_modx->resource.ext_nalichnik,
                                          'name' => 'ext_nalichnik'
                                      ])}
                              </div>
                            {/if}
                            
                            {if $_modx->resource.ext_furnitura != ''}
                              <div class="select-block mb-3">
                                <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                     {'localizator_lz_furnitura' | config}
                                </p>
                                    {$_modx->runSnippet('uk_render_select', [
                                      'input' => $_modx->resource.ext_furnitura,
                                      'name' => 'ext_furnitura'
                                  ])}
                              </div>
                            {/if}
                            {if $_modx->resource.ext_portal != ''}
                              <div class="select-block mb-3">
                                <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Портал</p>
                                    {$_modx->runSnippet('uk_render_select', [
                                      'input' => $_modx->resource.ext_portal,
                                      'name' => 'ext_portal'
                                  ])}
                              </div>
                            {/if}
                            </div>
                          </div>
                         
                          <div class="row px-3 pb-4 pt-3">
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'dopolnitelnoepole',
                		'tpl' => '@FILE chunks/catalog/DopParametr.tpl',
                	   ]}                                
                          </div>
                          
                          <div class="row">
                            <div class="col-12">
                              <div class="d-flex">
                         <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden/>  
                         <button type="button" id="purchase-btn" class="product-to-cart shk-but" data-no="{$_modx->lexicon('localizator_no')}" data-bs-toggle="modal" data-toggle="modal" data-bs-target="#oneclick" onclick="fillmodal()">
                             {'localizator_lz_purchase' | config}
                             
                         </button>
            
 [[*grandparent:is=`7458`:or:is=`16487`:then=`
                                <button type="submit" class="product-to-cart" name="ms2_action" value="cart/add">
                                    [[%localizator_lz_tocart? &topic=`translate` &namespace=`babel`]]
                                </button> 
 `:else=``]]                               

                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                </form>
            </article>
<!--TUTA-->
  
    <div class="article-section bg2 container-fluid py-4">
      <div class="container">
        <div class="row">


<div class="col-lg-8 mx-auto mt-5">
    
                <h2>[[%localizator_content_opisaniedveri? &topic=`translate` &namespace=`babel`]] [[*pagetitle]]</h2>
                <p>
                       {'pdoField' | snippet : [
                       'id' => $_modx->resource.id,
                		'top' => '2',
                		'topLevel' => '2',
                	   ]}                 
                                <strong>{$_modx->resource.pagetitle}</strong> {$_modx->lexicon('localizator_content_collekcii')} "
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/Tags.tpl',
                	   ]}  
                                ", {$_modx->lexicon('localizator_content_otproizvoditelya')} "
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'brand',
                		'tpl' => '@FILE chunks/catalog/Tags.tpl',
                	   ]}                                 
                                " {$_modx->lexicon('localizator_content_pocene')} {$_modx->lexicon('localizator_from')} {$price} грн., {$_modx->lexicon('localizator_content_vimozhetekupit')}.</p>                
                                {$_modx->resource.content}

            </div>
          
        </div>
      </div>
    </div>
                {'looked' | snippet : [
                    'tplOuter' => '@FILE chunks/catalog/lookedOuter.tpl',
                    'tpl' => '@FILE chunks/catalog/TovarTplMain22.tpl',
                    'limit' => 4,
                ]}

    <div class="article-section bg2 container-fluid py-4">
          <div class="container">
           
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <p class="text-center font-weight-bold">
                    [[%localizator_drugie? &topic=`translate` &namespace=`babel`]] 
                    [[%localizator_lz_dveri? &topic=`translate` &namespace=`babel`]]
                    {$brand} {$_modx->lexicon('localizator_content_collekcii')} "
                       {'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/Tags.tpl',
                	   ]}                    
                    "</p>
                </div>
            </div>
            <div class="row mt-3">
                {'msProducts' | snippet : [
                    'snippet' => 'msProducts',
                    'parents' => $_modx->resource.parent,
                    'resources' => '-[[*id]]',
                    'tpl' => '@FILE chunks/catalog/TovarTpl.tpl',
                    'limit' => 3,
                    'sortby' => 'RAND()'
                ]}
            </div>
            <div class="row text-center py-4">
                <a href="[[~[[*parent]]]]" class="mx-auto linktogood">
                   [[%localizator_moregoods? &topic=`translate` &namespace=`babel`]] 
                </a>
            </div>
            
            <div class="slider-product article-section bg2 container-fluid py-4">
  <div class="slider-product-content container col-lg-9 catalog">
      <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2 class="text-center font-weight-bold">
                  {'recom' | config}
                </h2>
            </div>
      </div>
    <div class="slider-product-list mt-3" style="margin: 0px -2px 0px 0px;">
                [[msProducts?
                	&parents=`[[!BabelTranslation? &resourceId=`19,3,6972,7308` &contextKey=`[[*context_key]]`]]`
                	&limit=`120`
                	&tpl=`@FILE chunks/catalog/TovarTplMain22.tpl`
                ]]        
    </div>
    <div class="slider-product-arrow-left">
      <span><</span>
    </div>
    <div class="slider-product-arrow-right">
      <span>></span>
    </div>
  </div>
</div>
            
          </div>
        </div>
{/block}
    {include 'file:chunks/footerforms.tpl'}
    {include 'file:chunks/footer.tpl'}
    </div>
    {include 'file:chunks/scripts.tpl'} 

    <script>
        window.onload=function(){ 
        
        if("localStorage"in window&&window.localStorage!=null) { 
            if(!window.localStorage.getItem("viewed_products")){ 
                window.localStorage.setItem("viewed_products",[]);
            }
            var id_product=document.querySelector(".block_product").getAttribute("data-product"), products=window.localStorage.getItem("viewed_products") || "";
            if (!products.match(id_product)) { 
                var number=(products.split(",")).length,elems=[],new_products=[];
                if(number<8) {
                    elems=products.length?products.split(","):[];
                    new_products=elems;
                    new_products.unshift(id_product);
                    window.localStorage.setItem("viewed_products",new_products);
                } else if (number>=8) { 
                    elems=products.split(",");
                    elems.unshift(id_product);
                    for(var i=0;i<elems.length;i++){ if(i>=8){ break; }
                    new_products[i]=elems[i];
                }
                window.localStorage.setItem("viewed_products",new_products);
            }
        }}}
    </script>
    
    <script>
    
        function fillmodal() { 
            var textprop = ''; 
            var inputprop = '';
            var colorval = $('.color-switcher.active').find('span').text();
            var color = "{$_modx->lexicon('localizator_lz_color')}: " + colorval;
            var dopparam = " {$_modx->lexicon('localizator_lz_dopparametry')}: ";
            var dopparamresult = "{$_modx->lexicon('localizator_no')}";
            
            var dopparamArr = [];
            $.each($("input[name='additional[]']:checked"), function() {
                dopparamArr.push($(this).val());
            } );
            if (dopparamArr.length !== 0) { dopparamresult = dopparamArr.join(', '); }
            
            $('#purchaseimg').attr('src', $('#tovar-img').attr('src'));
            $( ".select-block .select-berezha" ).each(function() { 
                var selectheader = '';
                var selectoption = '';
                var selectresult = '';
                selectheader = $(this).prev('p').text();
                selectoption = $(this).find('option:selected').text();
                selectresult = selectheader + ': ' + selectoption + ';';
                textprop += selectresult + '<br>';
                inputprop += selectresult + ' ';
            } );
            
            var priceObj = $('.shk-price');
            priceObj.find('span').remove();
            var price = priceObj.html();
            
            $('#text-prop').html(textprop + color  + '<br>' + dopparam + dopparamresult);
            $('#input-prop').val('Цена ' + price + ' грн. ' + inputprop  + color + ' ' + dopparam + dopparamresult);
        } 
        
      $(document).ready(function() {
      var imageCount = $(".product-page-gallery .color-switcher").length;
          $('.product-page-gallery').slick({
          infinite: true,
          slidesToShow: Math.min(6, imageCount),
          slidesToScroll: 1,
          nextArrow:'<button class="carousel-arrow arrow-next" aria-label="Следующий" type="button"></button>',
          prevArrow:'<button class="carousel-arrow arrow-prev" aria-label="Предыдущий" type="button"></button>',
          responsive: [
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 576,
              settings: {                
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
        });
        
        $(document).on('click', '.color-switcher', function(e) {
            e.preventDefault();
            $('#tovar-picture source').remove();
            $('#tovar-img').attr('src', $(this).data('img'));
            $('.color-switcher').removeClass('active');
            $(this).addClass('active');
        } );
        
        $('.phoneinput').inputmask( { "mask": "+38 (099) 999-9999" } );
        
        $(document).on('af_complete', function(event, response) {
            var form = response.form;
            if (form.attr('id') == 'oneclick-form' && response.success) {
               $("#oneclick").modal('hide');
            }
        });
        
        $('.shk_param.select-berezha:not(.polotno)').on('select2:select', function(){ 
            $('.complect-price').addClass('active');
        });
      } );
    </script>
    <style>
.form-control {
  display: block;
  width: 100%;
  height: calc(2.25rem + 2px);
  padding: .375rem .75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #f3e3cc;
  background-clip: padding-box;
  border: 1px solid #212529;
  border-radius: .25rem;
  transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -1px;
  margin-left: -1px;
}
.msoc_product_line_image {
  position: absolute;
  left: -1px;
}
    </style>
    <style>
          .complect-price {
              height: auto;
              max-height: 0;
              overflow: hidden;
              transition: max-height .2s linear;
          }
          .complect-price.active {
              max-height: 200px;
              transition: max-height .2s linear;
          }
          .complect-price p { 
            background: #f3e3cc;
            padding: .5rem 1rem .5rem 2rem;
            border-top-left-radius: 2rem;
            border-bottom-left-radius: 2rem;
            position: relative;
          } 
          .complect-price p:before {
              content: '';
              display: block;
              width: 10px;
              height: 10px;
              position: absolute;
              top: 50%;
              left: .75rem;
              transform: translateY(-50%);
              background: #fff;
              border-radius: 50%;
          }
          div.fortwo, div.forone {
              display: none;
          }
          div.fortwo.active, div.forone.active {
              display: block;
          }
      </style>
    <script>
        function fillmodal() { 
            var textprop = ''; 
            var inputprop = '';
            var colorval = $('.color-switcher.active').find('span').text();
            var color = "{$_modx->lexicon('localizator_lz_color')}: " + colorval;
            var dopparam = " {$_modx->lexicon('localizator_lz_dopparametry')}: ";
            var dopparamresult = "{$_modx->lexicon('localizator_no')}";
            
            var dopparamArr = [];
            $.each($("input[name='additional[]']:checked"), function() {
                dopparamArr.push($(this).val());
            } );
            if (dopparamArr.length !== 0) { dopparamresult = dopparamArr.join(', '); }
            
            $('#purchaseimg').attr('src', $('#tovar-img').attr('src'));
            $( ".select-block .select-berezha" ).each(function() { 
                var selectheader = '';
                var selectoption = '';
                var selectresult = '';
                selectheader = $(this).prev('p').text();
                selectoption = $(this).find('option:selected').text();
                selectresult = selectheader + ': ' + selectoption + ';';
                textprop += selectresult + '<br>';
                inputprop += selectresult + ' ';
            } );
            
            var priceObj = $('.shk-price');
            priceObj.find('span').remove();
            var price = priceObj.html();
            
            $('#text-prop').html(textprop + color  + '<br>' + dopparam + dopparamresult);
            $('#input-prop').val('Цена ' + price + ' грн. ' + inputprop  + color + ' ' + dopparam + dopparamresult);
        } 
      $(document).ready(function() {
        
        $(document).on('click', '.color-switcher', function(e) {
            e.preventDefault();
            $('#tovar-img').attr('src', $(this).data('img'));
            $('.color-switcher').removeClass('active');
            $(this).addClass('active');
        } );
        
        $('.phoneinput').inputmask( { "mask": "+38 (099) 999-9999" } );
        
        $(document).on('af_complete', function(event, response) {
            var form = response.form;
            if (form.attr('id') == 'oneclick-form' && response.success) {
               $("#oneclick").modal('hide');
            }
        });
        $('.select-block .select-berezha:not(.polotno)').on('select2:select', function(){ 
            if ($(this).hasClass('triggertwo')) {
                if($(this).val() == '1') {
                    $('div.fortwo').removeClass('active');
                    $('div.forone').addClass('active');
                    $('select.fortwo').val('0__0').trigger('change');
                } else {
                    $('div.fortwo').addClass('active');
                    $('div.forone').removeClass('active');
                    $('select.forone').val('0__0').trigger('change');
                }
                console.log($(this).val());
            }
            $('.complect-price').addClass('active');
        });
      } );
    </script>   
  </body>
</html>  