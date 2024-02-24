<!DOCTYPE html>
<html
    prefix="og: https://ogp.me/ns# fb: https://ogp.me/ns/fb# product: https://ogp.me/ns/product# business: https://ogp.me/ns/business# place: http://ogp.me/ns/place#"
    lang="{$_modx->config.cultureKey}">

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
        <article class="article-section container py-5 shk-item" id="msProduct" itemtype="http://schema.org/Product"
            itemscope>
            {include 'file:chunks/catalog/microCard.tpl'}
            <form class="form-horizontal ms2_form msoptionsprice-product" method="post">
                <input type="hidden" name="id" value="{$_modx->resource.id}" />
                <div class="row product-page block_product" data-product="{$_modx->resource.id}">
                    <div class="col-xl-4 col-md-4 product-page-image">
                        <div class="row">
                            <div class="col-12 text-center">
                                [[!msGallery? &product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]`
                                ]]
                                [[-msGallery? &tpl=`@FILE chunks/msGalleryNew.tpl`
                                &product=`[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`web`]]` ]]
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-8 col-md-8 product-page-info">
                        <div class="row">
                            <div class="col-9 section-header mb-4 text-left">
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
                                {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $_modx->resource.id,
                                'contextKey' => 'uk']}
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
                            <div class="col-12 col-sm-6 col-lg-5">
                                <p class="font-weight-bold text-uppercase h5">
                                    {'ms2_product_price' | lexicon}
                                    {if $_modx->context.key == 'web'}
                                    За дверной блок
                                    {else}
                                    За дверний блок
                                    {/if}
                                </p>
                                <p class="product-page-price font-weight-bold py-3">
                                    {if $price == '0'}
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
                                        <span
                                            class="msoptionsprice-cost msoptionsprice-[[*id]] font-weight-bold h5 shk-price price">
                                            {$price}
                                        </span>
                                    </p>
                                </div>
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
                                <BR>
                                <div>
                                    {'msOptions' | snippet : [
                                    'product' => $_modx->resource.id,
                                    'options' => 'color',
                                    ]}
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 card">
                                {$_modx->resource.params}
                            </div>
                        </div>
                        <div class="row pb-4 pt-3">
                            <div class="col-12 col-sm-6">
                                {'msOptions' | snippet : [
                                'product' => $_modx->resource.id,
                                'options' => 'torecdver',
                                ]}
                            </div>
                            <div class="col-12 col-sm-6">
                                {'msOptions' | snippet : [
                                'product' => $_modx->resource.id,
                                'options' => 'pokraska',
                                ]}
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
                                                <input type="number" name="count" id="product_price"
                                                    class="form-control col-md-6" value="1" />
                                                <div class="input-group-append">
                                                    <span class="input-group-text">
                                                        {'ms2_frontend_count_unit' | lexicon}
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit"
                                        class="col button button--gradient js-import button--sm _import-pending _import-loaded _import-executed"
                                        name="ms2_action" value="cart/add">
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
                                    <input type="number" name="count" id="product_price" class="form-control col-md-6"
                                        value="1" hidden />
                                    <button
                                        class="button button--gradient js-import button--full button--dark _lg-show _import-pending _import-loaded _import-executed"
                                        type="button" id="purchase-btn" id="purchase-btn"
                                        data-no="{'oneclick' | config}" onclick="fillmodal()" data-fancybox=""
                                        href="#oneclick">
                                        Купить в 1 клик </button>
                                </div>
                            </div>
                            <div class="col">
                                <div class="d-flex row">
                                    <button
                                        class="col-12 button button--gradient js-import button--sm _import-pending _import-loaded _import-executed"
                                        title="Вызов замерщика" rel="nofollow" type="button" data-fancybox=""
                                        href="#zamer-call">
                                        Вызов замерщика
                                    </button>
                                </div>
                            </div>
                            {else}
                            <div class="col">
                                <div class="d-flex">
                                    <input type="number" name="count" id="product_price" class="form-control col-md-6"
                                        value="1" hidden />
                                    <button
                                        class="button button--gradient js-import button--full button--dark  _import-pending _import-loaded _import-executed"
                                        type="button" id="purchase-btn" id="purchase-btn"
                                        data-no="{'oneclick' | config}" onclick="fillmodal()" data-fancybox=""
                                        href="#oneclick">
                                        Купити в 1 клік </button>
                                </div>
                            </div>
                            <div class="col">
                                <div class="d-flex row">
                                    <button
                                        class="col-12 button button--gradient js-import button--sm _import-pending _import-loaded _import-executed"
                                        rel="nofollow" type="button" data-fancybox="" href="#zamer-calluk">
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

        <div class="article-section bg2 container-fluid py-4">
            <div class="container">
                <div class="row">
                    <div class="container-fluid">
                        <ul class="nav nav-tabs offset-md-4" style="margin-top: -65px;">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#description">{'opis' | config}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#characteristics">{'har' | config}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" id="review" href="#opinion">{'rev' | config}</a>
                            </li>
                        </ul>
                        <div class="tab-content p-3">
                            <div class="tab-pane fade show active scroll-content " id="description">
                                <br />
                                {$_modx->resource.content}
                                <hr>
                                [[getImageList? &tvname=`gallerybrend` &docid=`[[*idbrand]]` &tpl=`GalleryBrandTpl`]]
                                <section class="quality-indicators article-content container py-5">
                                    <div class="row">
                                        <div class="col-lg-8 mx-auto">
                                            <p class="text-center font-weight-bold text-uppercase h5">
                                                Видео бренда
                                                {'msOptions' | snippet : [
                                                'product' => $_modx->resource.id,
                                                'options' => 'brand',
                                                'tpl' => '@FILE chunks/catalog/Tags.tpl',
                                                ]}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        {set $rows = $_modx->resource.idbrand | resource : 'videobrand' | fromJSON}
                                        {foreach $rows as $idx => $row}
                                        <div class="col-md-4">
                                            <a class="one-block-photo video-1 wow fadeInUpBig" data-wow-duration="1s"
                                                data-wow-delay="0.5s" data-wow-offset="50" href="{$row.videos}"
                                                data-fancybox=""
                                                style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInUpBig;">
                                                <img class="lazy img-video-yout"
                                                    src="{$row.image | pthumb : 'w=387&h=218&zc=1$f=webp&q=65'}"
                                                    alt="{$row.name}" />
                                                <div class="flags">
                                                    <img class="lazy" src="/assets/img/icons/youtube.svg" alt="" />
                                                </div>
                                                <div class="linkVideo">
                                                    <p class="heading6">{$row.name}</p>
                                                </div>
                                            </a>
                                        </div>

                                        <script type="application/ld+json">
                                            {
                                              "@context": "https://schema.org",
                                              "@type": "VideoObject",
                                              "name": "{$row.name}",
                                              "description": "{$row.name}",
                                              "thumbnailUrl": [
                                                "{$row.image}"
                                               ],
                                              "uploadDate": "{$row.date}",
                                              "duration": "",
                                              "contentUrl": "{$row.videos}",
                                              "embedUrl": "https://www.example.com/embed/123",
                                              "interactionStatistic": {
                                                "@type": "InteractionCounter",
                                                "interactionType": { "@type": "WatchAction" },
                                                "userInteractionCount": 5647018
                                              },
                                              "regionsAllowed": "UK"
                                            }
                                            </script>
                                        {/foreach}
                                    </div>
                                </section>
                            </div>
                            <div class="tab-pane fade" id="characteristics">
                                <br />
                                {$_modx->resource.haracter}
                            </div>
                            <div class="tab-pane fade" id="opinion">
                                <br />
                                <div class="row">
                                    <div class="col-lg-7 mx-auto mt-5">
                                        <h2>{'rev' | config}</h2>

                                        [[!ecMessages:default=`[[!++commno]]`?
                                        &limit=`100`
                                        &thread=`resource-[[BabelTranslation? &resourceId=`[[*id]]` &contextKey=`uk`]]`
                                        ]]
                                    </div>
                                    <div class="col-lg-5 mx-auto mt-5">
                                        {'ecForm' | snippet : [
                                        'allowedFields' => 'user_name,user_email,subject,rating,text'
                                        ]}
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
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <p class="text-center font-weight-bold">
                            {if $_modx->context.key == 'web'}
                            Другие двери коллекции
                            {else}
                            Інші двері колекціі
                            {/if}
                            {$_modx->resource.parent | resource : 'pagetitle'}
                        </p>
                    </div>
                </div>
                <div class="row mt-3">
                    {'msProducts' | snippet : [
                    'snippet' => 'msProducts',
                    'parents' => $_modx->resource.parent,
                    'includeTVs' => 'titletovar',
                    'resources' => '-[[*id]]',
                    'tpl' => '@FILE chunks/catalog/TovarTpl.tpl',
                    'limit' => 3,
                    'sortby' => 'RAND()'
                    ]}
                </div>
                <div class="row text-center py-4">
                    <a href="{$_modx->resource.parent | resource : 'uri'}" class="mx-auto linktogood">
                        {if $_modx->context.key == 'web'}
                        Смотреть все
                        {else}
                        Переглянути всі
                        {/if}

                    </a>
                </div>
            </div>
        </div>
        {include 'file:chunks/catalog/microdatajson.tpl'}
        {/block}
        {if $_modx->context.key == 'web'}
        {include 'file:chunks/footerru.tpl'}
        {else}
        {include 'file:chunks/footeruk.tpl'}
        {/if}
    </div>
    {include 'file:chunks/scripts.tpl'}

    <script>
        window.onload = function () {
            if ("localStorage" in window && window.localStorage != null) {
                if (!window.localStorage.getItem("viewed_products")) {
                    window.localStorage.setItem("viewed_products", []);
                }
                var id_product = document.querySelector(".block_product").getAttribute("data-product"),
                    products = window.localStorage.getItem("viewed_products") || "";
                if (!products.match(id_product)) {
                    var number = products.split(",").length,
                        elems = [],
                        new_products = [];
                    if (number < 8) {
                        elems = products.length ? products.split(",") : [];
                        new_products = elems;
                        new_products.unshift(id_product);
                        window.localStorage.setItem("viewed_products", new_products);
                    } else if (number >= 8) {
                        elems = products.split(",");
                        elems.unshift(id_product);
                        for (var i = 0; i < elems.length; i++) {
                            if (i >= 8) {
                                break;
                            }
                            new_products[i] = elems[i];
                        }
                        window.localStorage.setItem("viewed_products", new_products);
                    }
                }
            }
        };
    </script>

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
            background-clip: padding-box;
            border: 1px solid #212529;
            border-radius: 0.25rem;
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
            $(document).on("click", ".color-switcher", function (e) {
                e.preventDefault();
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
            $(".select-block .select-berezha:not(.polotno)").on("select2:select", function () {
                if ($(this).hasClass("triggertwo")) {
                    if ($(this).val() == "1") {
                        $("div.fortwo").removeClass("active");
                        $("div.forone").addClass("active");
                        $("select.fortwo").val("0__0").trigger("change");
                    } else {
                        $("div.fortwo").addClass("active");
                        $("div.forone").removeClass("active");
                        $("select.forone").val("0__0").trigger("change");
                    }
                    console.log($(this).val());
                }
                $(".complect-price").addClass("active");
            });
        });
    </script>

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
    <script src="https://malsup.github.io/jquery.form.js"></script>
</body>

</html>