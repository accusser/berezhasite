<!DOCTYPE html>
<html prefix="og: https://ogp.me/ns# product: https://ogp.me/ns/product#" dir="ltr" lang="{$_modx->config.cultureKey}">    
    <head>
        {block 'seo'} 
        {/block} 
        {include 'file:chunks/head.tpl'}
        <style>
            .linktogood {
                background: #007257;
                color: #fff;
                text-decoration: none;
                padding: 0.8rem 1.8rem;
                margin: 0.5rem 0;
                display: inline-block;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 0.9em;
                border-radius: 2rem;
                outline: 0;
                transition: all 0.3s ease;
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
                transition: max-height 0.2s linear;
            }
            .complect-price.active {
                max-height: 200px;
                transition: max-height 0.2s linear;
            }
            .complect-price p {
                background: #f3e3cc;
                padding: 0.5rem 1rem 0.5rem 2rem;
                border-top-left-radius: 2rem;
                border-bottom-left-radius: 2rem;
                position: relative;
            }
            .complect-price p:before {
                content: "";
                display: block;
                width: 10px;
                height: 10px;
                position: absolute;
                top: 50%;
                left: 0.75rem;
                transform: translateY(-50%);
                background: #fff;
                border-radius: 50%;
            }
        </style>
        <link rel="stylesheet" href="/assets/css/swiper.css" />
        <style>
            .swiper {
                width: 100%;
                height: 100%;
            }

            .swiper-slide {
                text-align: center;
                font-size: 18px;
                background: #fff;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .swiper-slide img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .swiper {
                width: 100%;
                height: 300px;
                margin-left: auto;
                margin-right: auto;
            }

            .swiper-slide {
                background-size: cover;
                background-position: center;
            }

            .mySwiper2 {
                height: 80%;
                width: 100%;
            }

            .mySwiper {
                height: 20%;
                box-sizing: border-box;
                padding: 10px 0;
            }

            .mySwiper .swiper-slide {
                width: 25%;
                height: 100%;
                opacity: 0.4;
            }

            .mySwiper .swiper-slide-thumb-active {
                opacity: 1;
            }

            .swiper-slide img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        </style>
    </head>
    <body>
        {include 'file:chunks/gtm.tpl'}
        {'!msOptionsPrice.initialize' | snippet}
        <div class="page-wrapper d-flex flex-column">
            {include 'file:chunks/header.tpl'}
            {block 'content'}
            <article class="article-section container py-5 shk-item" id="msProduct" itemtype="http://schema.org/Product" itemscope>
                {include 'file:chunks/catalog/microCard.tpl'}
                <form class="form-horizontal ms2_form msoptionsprice-product" method="post">
                    <input type="hidden" name="id" value="{$_modx->resource.id}" />
                    <div class="row product-page block_product" data-product="{$_modx->resource.id}">
                        <div class="col-xl-4 col-md-4 product-page-image">
                            <div class="row">
                                <div class="col-12 text-center">
                                    [[!msGallery? ]]
                                    [[-msGallery? &tpl=`tpl.msGalleryNew` &product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]` ]]
                                </div>
 
                            </div>
                        </div>
                        <div class="col-xl-8 col-md-8 product-page-info">
                            <div class="row">
                                <div class="col-xl-9 col-md-12 section-header mb-4 text-left">
                                    <h1 class="section-header mb-4 text-left">
                                        <span class="superheader"> 
                                        {'pdoField' | snippet : [
                                            'id' => $_modx->resource.id,
                                            'top' => 2,
                                            'topLevel' => 2
                                        ]}
                                        </span>
                                         {$_modx->resource.titletovar?: $_modx->resource.pagetitle}
                                    </h1>
                                </div>
                                <div class="col-3 section-header mb-4 text-right">
                    {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $_modx->resource.id, 'contextKey' => 'uk']}
                    {'!ecThreadRating' | snippet : [
                        'tpl' => '@FILE chunks/catalog/RatingTovar.tpl',
                        'starsTheme' => 'stars3',
                        'thread' => 'resource-' ~ $thread
                    ]}
                                    <small style="float: right;">
                                        {'reviews' | config} (
                    {'!ecMessagesCount' | snippet : ['thread' => 'resource-' ~ $thread]}
                                        ) / <a href="{$_modx->resource['id'] | url}#review">{'addrev' | config}</a>
                                    </small>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-sm-6 col-lg-6">
                                    <p class="font-weight-bold text-uppercase h5">{'ms2_product_price' | lexicon} {$_modx->resource.zapolotno}</p>
                                    <p class="product-page-price font-weight-bold py-3">
                    [[-!+kursv:is=`1`:then=`[[-!+price:replace=` ==`:mpy=`[[-!++kurs]]`]]`:else=`[[-!+price]]`]]
 {if $price==0?}
{if $_modx->context.key == 'web'}
Цена по запросу
{else}
Ціна за запитом
{/if}
{else}
<span class='msoptionsprice-cost msoptionsprice-[[*id]]'>{$price}</span> грн.
{/if}                                            
                                    </p>
                                    <div class="complect-price d-flex mb-3">
                                        <p>
                                        {'ms2_product_price' | lexicon} за комплект: 
                                        <span class="font-weight-bold h5 shk-price price">{$price}</span> грн.
                                        </p>
                                    </div>
                            <div>                              
                            {'msOptions' | snippet : [ 
                                'product' => $_modx->resource.id, 
                                'options' => 'color',
                            ]}
                            </div>                                    
                                </div>
                                <div class="col-12 col-sm-6 card">
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
<hr>
                            <!-- Раздвижные-->
                            <div class="row">
                                {if $_modx->resource.rzd_one_polotno != ''}
                                <div class="col-12 col-sm-6">
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                        {if $_modx->context.key == 'web'}
                                        Количество створок
                                        {else}
                                        Кількість створок    
                                        {/if}
                                        </p>
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
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                        {if $_modx->context.key == 'web'}
                                        Одностворчатое полотно
                                        {else}
                                        Одностворчате полотно   
                                        {/if}
                                        </p>
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
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.rzd_one_roliks, 'name' => 'rzd_one_roliks' ])} 
                                        {else}
                                        {$_modx->runSnippet('shk_render_tv', [ 'resourceId' => $_modx->resource.id, 'input' => $_modx->resource.rzd_one_roliks, 'options' => '' ])} 
                                    {/if}
                                    </div>
                                    {/if} {if $_modx->resource.rzd_two_roliks != ''}
                                    <div class="select-block mb-3 fortwo">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Двустворчатая система роликов</p>
                                        {if ('localizator_key' | option) == 'uk'} 
                                            {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.rzd_two_roliks, 'name' => 'rzd_two_roliks' ])} {else}
                                        {$_modx->runSnippet('shk_render_tv', [ 'resourceId' => $_modx->resource.id, 'input' => $_modx->resource.rzd_two_roliks, 'options' => '' ])} {/if}
                                    </div>
                                    {/if}
                                </div>
                                <div class="col-12 col-sm-6">
                                    {if $_modx->resource.rzd_one_kupe_handle != ''}
                                    <div class="select-block mb-3 forone active">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Ручка-купе одностворчатой двери</p>
                                        {if ('localizator_key' | option) == 'uk'} 
                                            {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.rzd_one_kupe_handle, 'name' => 'rzd_one_kupe_handle' ])} {else}
                                        {$_modx->runSnippet('shk_render_tv', [ 'resourceId' => $_modx->resource.id, 'input' => $_modx->resource.rzd_one_kupe_handle, 'options' => '' ])} {/if}
                                    </div>
                                    {/if} {if $_modx->resource.rzd_two_kupe_handle != ''}
                                    <div class="select-block mb-3 fortwo">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Ручка-купе двустворчатой двери</p>
                                        {if ('localizator_key' | option) == 'uk'} {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.rzd_two_kupe_handle, 'name' => 'rzd_two_kupe_handle' ])} {else}
                                        {$_modx->runSnippet('shk_render_tv', [ 'resourceId' => $_modx->resource.id, 'input' => $_modx->resource.rzd_two_kupe_handle, 'options' => '' ])} {/if}
                                    </div>
                                    {/if}
                                </div>
                            </div>
                            <!-- Раздвижные-->

                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    {if $_modx->resource.dverBlok_vhod != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                            [[*context_key:is=`web`:then=`Дверной блок`:else=`Дверний блок`]]
                                        </p>

                                        [[*dverBlok_vhod:replace=`[[+id]]==[[*id]]`]]
                                    </div>
                                    {/if}
                                </div>
                                {if $_modx->resource.complect_vhod != ''}
                                <div class="col-12 col-sm-6">
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                            [[*context_key:is=`web`:then=`Комплектация`:else=`Комплектація`]]
                                            </p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.complect_vhod, 'name' => 'complect_vhod' ])}
                                    </div>
                                </div>
                                {/if}
                                <div class="col-12 col-sm-6">
                                    {if $_modx->resource.dekor_vhod != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Декор</p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.dekor_vhod, 'name' => 'dekor_vhod' ])}
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
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.ext_korobka, 'name' => 'ext_korobka' ])}
                                    </div>
                                    {/if}
                                </div>
                                <div class="col-12 col-sm-6">
                                    {if $_modx->resource.ext_rasshiritel != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                            [[*context_key:is=`web`:then=`Расширитель`:else=`Розширювач`]]
                                        </p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.ext_rasshiritel, 'name' => 'ext_rasshiritel' ])}
                                    </div>
                                    {/if} {if $_modx->resource.ext_nalichnik != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                            [[*context_key:is=`web`:then=`Наличник`:else=`Лиштва`]]
                                        </p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.ext_nalichnik, 'name' => 'ext_nalichnik' ])}
                                    </div>
                                    {/if} {if $_modx->resource.ext_furnitura != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">
                                            {'localizator_lz_furnitura' | config}
                                        </p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.ext_furnitura, 'name' => 'ext_furnitura' ])}
                                    </div>
                                    {/if} 
                                    {if $_modx->resource.ext_portal != ''}
                                    <div class="select-block mb-3">
                                        <p class="font-weight-bold text-uppercase text-nowrap ti-0 mb-0">Портал</p>
                                        {$_modx->runSnippet('uk_render_select', [ 'input' => $_modx->resource.ext_portal, 'name' => 'ext_portal' ])}
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
                            <div class="row align-items-center">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 offset-xl-6">
                                    <div class="d-flex row">
                                        <div class="col form-group align-items-center">
                                            <div class="col-12 col-md-12">
                                                <div class="input-group">
                                                    <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" />
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">
                                                        {'ms2_frontend_count_unit' | lexicon}
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="col button button--gradient js-import button--sm _import-pending _import-loaded _import-executed" name="ms2_action" value="cart/add">
{if $_modx->context.key == 'web'}
В корзину
{else}
До кошика
{/if}  
                                        </button>
                                    </div>
                                </div>  
                            </div>   
                            <br>
<div class="row align-items-center">                    
{if $_modx->context.key == 'web'}
                                    <div class="col">
                                        <div class="d-flex">
                                            <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden />
<button class="button button--gradient js-import button--full button--dark _lg-show _import-pending _import-loaded _import-executed" type="button" id="purchase-btn" id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()"  data-fancybox="" href="#oneclick"

    >
        Купить в 1 клик    </button>                                            
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="d-flex row">
   <button class="col-12 button button--gradient js-import button--sm _import-pending _import-loaded _import-executed" title="Вызов замерщика" rel="nofollow" type="button" data-fancybox="" href="#zamer-call">
                                    Вызов замерщика
                                </button>   
                                        </div>
                                    </div>
{else}
                                    <div class="col" >
                                        <div class="d-flex">
                                            <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1" hidden />
    <button class="button button--gradient js-import button--full button--dark  _import-pending _import-loaded _import-executed" type="button" id="purchase-btn" id="purchase-btn" data-no="{$_modx->lexicon('localizator_no')}" onclick="fillmodal()"  data-fancybox="" href="#oneclick"

    >
        Купити в 1 клік    </button> 
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="d-flex row">
   <button class="col-12 button button--gradient js-import button--sm _import-pending _import-loaded _import-executed"rel="nofollow" type="button" data-fancybox="" href="#zamer-calluk">
                                    Виклик замірника
    </button>                       
    </div>
                                    </div>
{/if}                               
                            </div>
                        </div>
                    </div>
                </form>
            </article>
<hr>
            <div class="article-section bg2 container-fluid py-4">
                <div class="container">
                    <div class="row">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs offset-md-4" style="margin-top: -65px;">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#description">[[!++opis]]</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#characteristics">[[!++har]]</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" id="review" href="#opinion">[[!++rev]]</a>
                                </li>
                            </ul>
                            <div class="tab-content p-3">
                                <div class="tab-pane fade show active" id="description">
                                    <br />
                                    {$_modx->resource.content}
                                    <hr>
  [[getImageList? &tvname=`gallerybrend` &docid=`[[*idbrand]]` &tpl=`GalleryBrandTpl`]]    
<section class="quality-indicators article-content container py-5">
 <div class="row">
    <div class="col-lg-8 mx-auto">
        <p class="text-center font-weight-bold text-uppercase h5">
Видео
        </p>
    </div>
</div>
  <div class="row">                                  
  [[getImageList? &tvname=`videobrand` &docid=`[[*idbrand]]` &tpl=`VideoBrandTpl`]]    
  </div>
</section>  

                                </div>
                                <div class="tab-pane fade" id="characteristics">
                                    <br />
                                    [[*haracter]]
                                </div>
                                <div class="tab-pane fade" id="opinion">
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-7 mx-auto mt-5">
                                            <h2>[[!++rev]]</h2>

                                            [[!ecMessages:default=`[[!++commno]]`? &limit=`100` &thread=`resource-[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`uk`]]` ]]
                                        </div>
                                        <div class="col-lg-5 mx-auto mt-5">
                                            [[!ecForm? &allowedFields=`user_name,user_email,subject,rating,text` ]]

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-8 mx-auto mt-5"></div>
                    </div>
                </div>
            </div>


            <div class="article-section bg2 container-fluid py-4">
                <div class="container catalog">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <p class="text-center font-weight-bold">
                                [[%localizator_drugie? &topic=`translate` &namespace=`babel`]] [[!++localizator_lz_dveri]] {$brand} [[!++localizator_content_collekcii]]" {'msOptions' |
                                snippet : [ 'product' => $_modx->resource.id, 'options' => 'tags', 'tpl' => '@FILE chunks/catalog/Tags.tpl', ]} "
                            </p>
                        </div>
                    </div>
                    <div class="row mt-3">
                        {'msProducts' | snippet : [ 'snippet' => 'msProducts', 'parents' => $_modx->resource.parent, 'resources' => '-[[*id]]', 'tpl' => '@FILE chunks/catalog/TovarTpl.tpl', 'limit' => 4, 'sortby' => 'RAND()' ]}
                    </div>
                    <div class="row text-center py-4">
                        <a href="[[~[[*parent]]]]" class="mx-auto linktogood">
                            [[%localizator_moregoods? &topic=`translate` &namespace=`babel`]]
                        </a>
                    </div>



                </div>
            </div>
            {/block}
    {if $_modx->context.key == 'web'}
    {include 'file:chunks/footerru.tpl'}
    {else}
    {include 'file:chunks/footeruk.tpl'}
    {/if}
        </div>
        {include 'file:chunks/scripts.tpl'}
        <script>
            function fillmodal() {
                var textprop = "";
                var inputprop = "";
                var colorval = $(".color-switcher.active").find("span").text();
                var color = "{$_modx->lexicon('localizator_lz_color')}: " + colorval;
                var dopparam = " {$_modx->lexicon('localizator_lz_dopparametry')}: ";
                var dopparamresult = "{$_modx->lexicon('localizator_no')}";

                var dopparamArr = [];
                $.each($("input[name='additional[]']:checked"), function () {
                    dopparamArr.push($(this).val());
                });
                if (dopparamArr.length !== 0) {
                    dopparamresult = dopparamArr.join(", ");
                }

                $("#purchaseimg").attr("src", $("#tovar-img").attr("src"));
                $(".select-block .select-berezha").each(function () {
                    var selectheader = "";
                    var selectoption = "";
                    var selectresult = "";
                    selectheader = $(this).prev("p").text();
                    selectoption = $(this).find("option:selected").text();
                    selectresult = selectheader + ": " + selectoption + ";";
                    textprop += selectresult + "<br>";
                    inputprop += selectresult + " ";
                });

                var priceObj = $(".shk-price");
                priceObj.find("span").remove();
                var price = priceObj.html();

                $("#text-prop").html(textprop + color + "<br>" + dopparam + dopparamresult);
                $("#input-prop").val("Цена " + price + " грн. " + inputprop + color + " " + dopparam + dopparamresult);
            }

            $(document).ready(function () {
                var imageCount = $(".product-page-gallery .color-switcher").length;
                $(".product-page-gallery").slick({
                    infinite: true,
                    slidesToShow: Math.min(6, imageCount),
                    slidesToScroll: 1,
                    nextArrow: '<button class="carousel-arrow arrow-next" aria-label="Следующий" type="button"></button>',
                    prevArrow: '<button class="carousel-arrow arrow-prev" aria-label="Предыдущий" type="button"></button>',
                    responsive: [
                        {
                            breakpoint: 1200,
                            settings: {
                                slidesToShow: 3,
                                slidesToScroll: 3,
                            },
                        },
                        {
                            breakpoint: 992,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2,
                            },
                        },
                        {
                            breakpoint: 576,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1,
                            },
                        },
                    ],
                });

                $(document).on("click", ".color-switcher", function (e) {
                    e.preventDefault();
                    $("#tovar-picture source").remove();
                    $("#tovar-img").attr("src", $(this).data("img"));
                    $(".color-switcher").removeClass("active");
                    $(this).addClass("active");
                });

                $(".phoneinput").inputmask({ mask: "+38 (099) 999-9999" });

                $(document).on("af_complete", function (event, response) {
                    var form = response.form;
                    if (form.attr("id") == "oneclick-form" && response.success) {
                        $("#oneclick").modal("hide");
                    }
                });

                $(".shk_param.select-berezha:not(.polotno)").on("select2:select", function () {
                    $(".complect-price").addClass("active");
                });
            });
        </script>
        <style>
            .form-control {
                display: block;
                width: 100%;
                height: calc(2.25rem + 2px);
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                line-height: 1.5;
                color: #495057;
                background-color: #ffffff;
                background-clip: padding-box;
                border: 1px solid #212529;
                border-radius: 0rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
                transition: max-height 0.2s linear;
            }
            .complect-price.active {
                max-height: 200px;
                transition: max-height 0.2s linear;
            }
            .complect-price p {
                background: #f3e3cc;
                padding: 0.5rem 1rem 0.5rem 2rem;
                border-top-left-radius: 2rem;
                border-bottom-left-radius: 2rem;
                position: relative;
            }
            .complect-price p:before {
                content: "";
                display: block;
                width: 10px;
                height: 10px;
                position: absolute;
                top: 50%;
                left: 0.75rem;
                transform: translateY(-50%);
                background: #fff;
                border-radius: 50%;
            }
            div.fortwo,
            div.forone {
                display: none;
            }
            div.fortwo.active,
            div.forone.active {
                display: block;
            }
        </style>

        <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

        <script>
            var swiper = new Swiper(".mySwiper", {
                loop: true,
                spaceBetween: 10,
                slidesPerView: 4,
                freeMode: true,
                watchSlidesProgress: true,
            });
            var swiper2 = new Swiper(".mySwiper2", {
                loop: true,
                spaceBetween: 1,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: swiper,
                },
            });
        </script>
        {* <script src="https://malsup.github.io/jquery.form.js"></script> *}
    </body>
</html>