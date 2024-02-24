
{ignore}
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-84KQ94KYP8"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() { dataLayer.push(arguments); }
  gtag('js', new Date());

  gtag('config', 'G-84KQ94KYP8');
</script>
{/ignore}
<base href="{$_modx->config.site_url}">
<meta charset="{$_modx->config.modx_charset}">
<title itemprop="headline">{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} {'!get_post' | snippet} | {$_modx->config.site_name}</title>
<meta name="description" itemprop="description" content="{$_modx->getPlaceholder('sf.description')?: $_modx->resource.description?: $_modx->resource.pagetitle} {'!get_post' | snippet}">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} {'!get_post' | snippet} | {$_modx->config.site_name}" />
<meta property="og:type" content="website" />
<meta property="og:url" content="{$_modx->config.site_url}" />
<meta property="og:image" content="{$_modx->config.site_url}assets/img/logo.svg" />
<link href="/favicon.ico" rel="icon">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<meta property="og:locale" content="{'cultureKey' | config}">
<meta property="og:rich_attachment" content="true">
<meta property="og:site_name" content="{$_modx->config.site_name}">
<meta property="og:type" content="business.business" />
<meta property="og:title" content="{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} {'!get_post' | snippet} | {$_modx->config.site_name}" />
<meta property="og:description" content="{$_modx->resource.description} {'!get_post' | snippet}" />
<meta property="og:image" content="{'site_url' | config}{if $_modx->resource.image?}{$_modx->resource.image}{else}/assets/img/fbimg.png{/if}" />
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:url" content="[[*template:isnot=`1`:then=`{'site_url' | config}[[*uri]]`:else=`{'site_url' | config}`]]">
<meta property="business:contact_data:street_address" content="{$_modx->config.metrodul}" />
<meta property="business:contact_data:locality" content="Киев" />
<meta property="business:contact_data:postal_code" content="02000" />
<meta property="business:contact_data:country_name" content="Украина" />
<meta property="place:location:latitude" content="50.4661488" />
<meta property="place:location:longitude" content="30.4445503" />
<meta property="business:contact_data:email" content="info@berezha.com" />
<meta property="business:contact_data:phone_number" content="050 282 01 25" />
<meta name="google-site-verification" content="4ZdsxN4eQnAWzCU5S1h9BtCEi8w93YZZ0Mq9X3mdNWI" />  

{'!BabelLinks' | snippet : [ 
'showCurrent' => 1,
'tpl' => '@FILE chunks/hreflang.tpl'
]} 
<link rel="preload" href="{$_modx->config.site_url}assets/css/fonts/helveticaneuecyr-black.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="{$_modx->config.site_url}assets/css/fonts/helveticaneuecyr-bold.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="{$_modx->config.site_url}assets/css/fonts/helveticaneuecyr-light.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="{$_modx->config.site_url}assets/css/fonts/helveticaneuecyr-medium.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="{$_modx->config.site_url}assets/css/fonts/helveticaneuecyr-roman.woff2" as="font" type="font/woff2" crossorigin>
<noscript><link rel="stylesheet" href="{$_modx->config.site_url}assets/css/fonts/fonts.css"></noscript>

<link rel="preload" as="image" href="{$_modx->config.site_url}assets/img/logo.svg" type="image/svg+xml">

<link rel="preload" as="font" href="{$_modx->config.site_url}assets/fonts/OpenSansCondensed-Light.woff2" type="font/woff2" crossorigin="anonymous">
<link rel="preload" as="font" href="{$_modx->config.site_url}assets/fonts/OpenSansCondensed-Bold.woff2" type="font/woff2" crossorigin="anonymous">
<script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type" : "Organization",
            "name" : "Бережа",
            "brand" :
                {
                    "name" : "Бережа"
                },
            "sameAs": ["https://www.youtube.com/channel/UC9XmJ1bCDQe4yO5MH8l2l8A","https://www.instagram.com/berezha_/","https://www.facebook.com/berezhadveri/"],
            "url" : "[[++site_url]]",
            "logo" : "[[++site_url]]assets/img/logo.svg",
            "image" : "[[++site_url]]assets/img/fbimg.png",
            "location" : [
                {
                    "@type": "Store",
                    "name": "Бережа, метро {$_modx->lexicon('localizator_metrod')} ",
                    "parentOrganization" : {
                        "name": "Бережа"
                    },
                    "logo" : "[[++site_url]]assets/img/logo.svg",
                    "image" : "[[++site_url]]assets/img/berezha-goloseevo.png",
                    "openingHours": ["Mo-Fr 10:00-20:00", "Sa 11:00-19:00"],
                    "currenciesAccepted": "UAH",
                    "paymentAccepted":"Cash, Credit Card",
                    "address":
                      {
                      "@type": "PostalAddress",
                      "streetAddress": "{$_modx->lexicon('localizator_metrodul')}, 17",
                      "addressLocality": "{$_modx->lexicon('localizator_city')}",
                      "addressCountry": "{$_modx->lexicon('localizator_country')}"
                      },
                    "telephone": "+380660532223",
                    "priceRange" : "$$"
                },{
                    "@type": "Store",
                    "name": "Бережа, метро {$_modx->lexicon('localizator_metrol')} ",
                    "parentOrganization" : {
                        "name": "Бережа"
                    },
                    "logo" : "[[++site_url]]assets/img/logo.svg",
                    "image" : "[[++site_url]]assets/img/berezha-zolotoustivska.png",
                    "openingHours": ["Mo-Fr 10:00-20:00", "Sa 10:00-18:00"],
                    "currenciesAccepted": "UAH",
                    "paymentAccepted":"Cash, Credit Card",
                    "address":
                      {
                      "@type": "PostalAddress",
                      "streetAddress": "{$_modx->lexicon('localizator_metrolul')}, 55",
                      "addressLocality": "{$_modx->lexicon('localizator_city')}",
                      "addressCountry": "{$_modx->lexicon('localizator_country')}"
                      },
                    "telephone": "+38 050 282 01 25",
                    "priceRange" : "$$"
                }
            ]
        }
    </script>

{$_modx->runSnippet('pdoCrumbs',[
  'showHome'=> 1,
  'showCurrent' => 1,
  'from' => '0'
  'tplWrapper'=> '@INLINE 
  <script type="application/ld+json">
  {
    "@context": "http://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [ {$output} ]
  }
  </script>',
  'tplHome'=>'@INLINE 
  {
    "@type": "ListItem",
    "position": {$idx},
    "item":
      {
        "@id": "{$uri}",
        "name": "Главная"
      }
  },',
  'tplCurrent'=>'@INLINE 
  {
    "@type": "ListItem",
    "position": {$idx},
    "item":
    {
    "@id": "{$uri}",
    "name": "{$menutitle}"
    }
  }',
  'tpl'=>'@INLINE 
  {
    "@type": "ListItem",
    "position": {$idx},
    "item":
      {
        "@id": "{$uri}",
        "name": "{$menutitle}"
      }
  },',
  ])}
{'extra' | config}

    <link rel="icon" href="{$_modx->config.site_url}assets/mobile/img/icons/icon-72x72.png">
    <!-- Apple Touch Icon -->
    <link rel="apple-touch-icon" href="{$_modx->config.site_url}assets/mobile/img/icons/icon-96x96.png">
    <link rel="apple-touch-icon" sizes="152x152" href="{$_modx->config.site_url}assets/mobile/img/icons/icon-152x152.png">
    <link rel="apple-touch-icon" sizes="167x167" href="{$_modx->config.site_url}assets/mobile/img/icons/icon-167x167.png">
    <link rel="apple-touch-icon" sizes="180x180" href="{$_modx->config.site_url}assets/mobile/img/icons/icon-180x180.png">
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/bootstrap.min.css">
    <!--link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/animate.css"-->

    <!--link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/all.min.css"-->
    <!--link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/brands.min.css"-->
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/solid.min.css">
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/magnific-popup.css">
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/css/nice-select.css">
    <!--link rel="stylesheet" href="{$_modx->config.site_url}assets/components/sendit/web/css/index.min.css"-->
    
    <!-- Stylesheet -->
    <link rel="stylesheet" href="{$_modx->config.site_url}assets/mobile/style.css">
    <!-- Web App Manifest -->
    <link rel="manifest" href="{$_modx->config.site_url}assets/mobile/manifest.json">
	 <style>
#mse2_mfilter .btn_more{
	     color: #020310;
  background-color: #ffaf00;
  border-color: #ffaf00;
  width: 100% !important;
	 </style>