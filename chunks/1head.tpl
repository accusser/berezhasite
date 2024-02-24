
{ignore}
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i) { w[ l ]=w[ l ]|| [ ];w[ l ].push( { 'gtm.start':
new Date().getTime(),event:'gtm.js' } );var f=d.getElementsByTagName(s)[ 0 ],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
 })(window,document,'script','dataLayer','GTM-W4WQ9L5');</script>
<!-- End Google Tag Manager -->
{/ignore}
<base href="{$_modx->config.site_url}">
<meta charset="{$_modx->config.modx_charset}">
<title itemprop="headline">{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} [[!get_post]] | {$_modx->config.site_name}</title>
<meta name="description" itemprop="description" content="{$_modx->getPlaceholder('sf.description')?: $_modx->resource.description?: $_modx->resource.pagetitle} [[!get_post]]">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} [[!get_post]] | {$_modx->config.site_name}" />
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
<meta property="og:locale" content="[[++cultureKey]]">
<meta property="og:rich_attachment" content="true">
<meta property="og:site_name" content="{$_modx->config.site_name}">
<meta property="og:type" content="business.business" />
<meta property="og:title" content="{$_modx->getPlaceholder('sf.title')?: $_modx->resource.longtitle?: $_modx->resource.pagetitle} [[!get_post]] | {$_modx->config.site_name}" />
<meta property="og:description" content="[[*description]] [[!get_post]]" />
<meta property="og:image" content="[[++site_url]][[*image:default=`assets/img/fbimg.png`]]" />
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:url" content="[[*template:isnot=`1`:then=`[[++site_url]][[*uri]]`:else=`[[++site_url]]`]]">
<meta property="business:contact_data:street_address" content="{$_modx->config.metrodul}" />
<meta property="business:contact_data:locality" content="Киев" />
<meta property="business:contact_data:postal_code" content="02000" />
<meta property="business:contact_data:country_name" content="Украина" />
<meta property="place:location:latitude" content="50.4661488" />
<meta property="place:location:longitude" content="30.4445503" />
<meta property="business:contact_data:email" content="info@berezha.com" />
<meta property="business:contact_data:phone_number" content="050 282 01 25" />
<meta name="google-site-verification" content="4ZdsxN4eQnAWzCU5S1h9BtCEi8w93YZZ0Mq9X3mdNWI" />  
{$_modx->runSnippet('!BabelLinks', [
'showCurrent' => 1,
'tpl' => '@FILE chunks/hreflang.tpl'
])}  
<link rel="preload" as="image" href="{$_modx->config.site_url}assets/img/logo.svg" type="image/svg+xml">

<link rel="preload" as="font" href="{$_modx->config.site_url}assets/fonts/OpenSansCondensed-Light.woff2" type="font/woff2" crossorigin="anonymous">
<link rel="preload" as="font" href="{$_modx->config.site_url}assets/fonts/OpenSansCondensed-Bold.woff2" type="font/woff2" crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/main.css">
    <!--link rel="stylesheet" href="/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/slick-theme.css"-->    
    <!--style>
    @font-face {
      font-family: 'Open Sans Condensed';
      font-style: normal;
      font-weight: 300;
      font-display: swap;
      src:url('[[++site_url]]assets/fonts/OpenSansCondensed-Light.eot?#iefix') format('embedded-opentype'),url('[[++site_url]]assets/fonts/OpenSansCondensed-Light.woff2') format('woff2'), url('[[++site_url]]assets/fonts/OpenSansCondensed-Light.woff') format('woff'), url('[[++site_url]]assets/fonts/OpenSansCondensed-Light.ttf')  format('truetype');
    }
    @font-face {
      font-family: 'Open Sans Condensed';
      font-style: normal;
      font-weight: 700;
      font-display: swap;
      src:url('[[++site_url]]assets/fonts/OpenSansCondensed-Bold.eot?#iefix') format('embedded-opentype'),url('[[++site_url]]assets/fonts/OpenSansCondensed-Bold.woff2') format('woff2'), url('[[++site_url]]assets/fonts/OpenSansCondensed-Bold.woff') format('woff'), url('[[++site_url]]assets/fonts/OpenSansCondensed-Bold.ttf')  format('truetype');
    }
    html, body, .page-wrapper {
        min-height: 100vh;
    }

    @media (max-width: 590px) {
        .cartname {
            display: none;
        }
    }
    *, ::after, ::before {
        box-sizing: border-box;
    }
    html {
        line-height: 1.15;
        -webkit-text-size-adjust: 100%;
        -ms-text-size-adjust: 100%;
        -ms-overflow-style: scrollbar;
        -webkit-tap-highlight-color: transparent;
    }
    body {
        margin: 0;
        line-height: 1.5;
        color: #212529;
        text-align: left;
        background-color: #fff;
    }
    article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
        display: block;
    }
    .page-wrapper {
        position: relative;
        transition: transform .5s ease;
    }
    .flex-column {
        -ms-flex-direction: column!important;
        flex-direction: column!important;
    }
    .d-flex {
        display: -ms-flexbox!important;
        display: flex!important;
    }
    .hdr {
        position: relative;
    }
    .bg1 {
        background: #544c47;
    }
    .bg2 {
        background: #f3e3cc;
    }
    .bg3 {
        background: #007257;
    }
    .position-relative {
        position: relative!important;
    }
    .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }
    .container-fluid {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }
    @media (min-width: 576px) {
        .container {
            max-width: 540px;
        }
    }
    @media (min-width: 768px) {
        .container {
            max-width: 720px;
        }
    }
    @media (min-width: 992px) {
        .container {
            max-width: 960px;
        }
    }
    @media (min-width: 1200px) {
        .container {
            max-width: 1140px;
        }
    }
    .row {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }
    .flex-column-reverse {
        -ms-flex-direction: column-reverse!important;
        flex-direction: column-reverse!important;
    }
    .justify-content-between {
        -ms-flex-pack: justify!important;
        justify-content: space-between!important;
    }
    .justify-content-end {
        -ms-flex-pack: end!important;
        justify-content: flex-end!important;
    }
    .justify-content-center {
        -ms-flex-pack: center!important;
        justify-content: center!important;
    }
    .align-items-center {
        -ms-flex-align: center!important;
        align-items: center!important;
    }
    .flex-wrap {
        -ms-flex-wrap: wrap!important;
        flex-wrap: wrap!important;
    }
    
    @media (min-width: 576px) {
        .justify-content-sm-between {
            -ms-flex-pack: justify!important;
            justify-content: space-between!important;
        }
    }
    p {
        margin-top: 0;
        margin-bottom: 1rem;
    }
    
    a {
        color: #007bff;
        text-decoration: none;
        background-color: transparent;
        -webkit-text-decoration-skip: objects;
    }
    
    @media (min-width: 1200px) {
        .flex-xl-row {
            -ms-flex-direction: row!important;
            flex-direction: row!important;
        }
    }
    
    .d-none {
        display: none!important;
    }
    
    .d-inline-block {
        display: inline-block!important;
    }
    
    @media (min-width: 768px) {
        .d-md-block {
            display: block!important;
        }
    }
    
    @media (min-width: 992px) {
        .d-lg-flex {
            display: -ms-flexbox!important;
            display: flex!important;
        }
        .d-lg-block {
        display: block!important;
        }
    }
    
    .bg-white {
        background-color: #fff!important;
    }
    
    .col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto, .col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
        position: relative;
        width: 100%;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }
    .nav-container {
        display: block;
        position: absolute;
        width: 100%;
        background: #fff;
        z-index: 9;
        padding: 2rem;
        top: 100%;
        left: 0;
        opacity: 0;
        max-height: 0;
        overflow: hidden;
        transition: all .3s ease-in;
    }
    .col-12 {
        -ms-flex: 0 0 100%;
        flex: 0 0 100%;
        max-width: 100%;
    }
    
    .offset-2 {
        margin-left: 16.666667%;
    }
    
    .col-8 {
        -ms-flex: 0 0 66.666667%;
        flex: 0 0 66.666667%;
        max-width: 66.666667%;
    }
    @media (min-width: 576px){
        .col-sm-6 {
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
        }
    }
    @media (min-width: 768px) {
        .col-md-3 {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }
        .col-md-4 {
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }
        .col-md-10 {
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
        }
    }
    @media (min-width: 992px){
        .col-lg-3 {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }
        .col-lg-6 {
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
        }
        .col-lg-12 {
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
        }
        .nav-container {
            width: 960px;
        }
    }
    @media (min-width: 1200px) {
        .col-xl-2 {
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
        }
        .col-xl-3 {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }
        .col-xl-4 {
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }
        .col-xl-5 {
            -ms-flex: 0 0 41.666667%;
            flex: 0 0 41.666667%;
            max-width: 41.666667%;
        }
        .col-xl-7 {
            -ms-flex: 0 0 58.333333%;
            flex: 0 0 58.333333%;
            max-width: 58.333333%;
        }
        .col-xl-10 {
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
        }
        .nav-container {
            width: 100%;
        }
    }
    
    img {
        vertical-align: middle;
        border-style: none;
    }
    
    .img-fluid {
        max-width: 100%;
        height: auto;
    }
    
    .text-white {
        color: #fff!important;
    }
    
    .clr1 {
        color: #fe8a01;
    }
    
    .font-weight-bold {
        font-weight: 700!important;
    }
    
    .text-uppercase {
        text-transform: uppercase!important;
    }
    
    .text-lowercase {
        text-transform: lowercase!important;
    }
    
    .text-center {
        text-align: center!important;
    }
    
    .text-right {
        text-align: right!important;
    }
    
    .text-nowrap {
        white-space: nowrap!important;
    }
    @media (min-width: 576px) {
        .d-sm-block {
            display: block!important;
        }
    }
    @media screen and (min-width: 576px) and (max-width: 767px){
        .col-sm-8 {
            -ms-flex: 0 0 66.666667%;
            flex: 0 0 66.666667%;
            max-width: 66.666667%;
        }
    }
    @media (min-width: 768px) {
        .text-md-left {
            text-align: left!important;
        }
    }
    
    @media (min-width: 1200px) {
        .text-xl-left {
            text-align: left!important;
        }
    }
    
    .p-0 {
        padding: 0!important;
    }
    
    .pl-0, .px-0 {
        padding-left: 0!important;
    }
    
    .pl-2, .px-2 {
        padding-left: .5rem!important;
    }
    
    .pl-3, .px-3 {
        padding-left: 1rem!important;
    }
    
    .pl-4, .px-4 {
        padding-left: 1.5rem!important;
    }
    .pl-5, .px-5 {
        padding-left: 3rem!important;
    }
    
    .pb-1, .py-1 {
        padding-bottom: .25rem!important;
    }
    
    .pb-2, .py-2 {
        padding-bottom: .5rem!important;
    }
    
    .pb-3, .py-3 {
        padding-bottom: 1rem!important;
    }
    
    .pb-4, .py-4 {
        padding-bottom: 1.5rem!important;
    }
    .pb-5, .py-5 {
        padding-bottom: 3rem!important;
    }
    
    .pr-0, .px-0 {
        padding-right: 0!important;
    }
    
    .pr-2, .px-2 {
        padding-right: .5rem!important;
    }
    
    .pr-3, .px-3 {
        padding-right: 1rem!important;
    }
    
    .pr-4, .px-4 {
        padding-right: 1.5rem!important;
    }
    
    .pt-1, .py-1 {
        padding-top: .25rem!important;
    }
    
    .pt-2, .py-2 {
        padding-top: .5rem!important;
    }
    
    .pt-3, .py-3 {
        padding-top: 1rem!important;
    }
    
    .pt-4, .py-4 {
        padding-top: 1.5rem!important;
    }
    .pt-5, .py-5 {
        padding-top: 3rem!important;
    }
    
    .m-0 {
        margin: 0!important;
    }
    
    .mb-0, .my-0 {
        margin-bottom: 0!important;
    }
    
    .ml-0, .mx-0 {
        margin-left: 0!important;
    }
    
    .mr-0, .mx-0 {
        margin-right: 0!important;
    }
    
    .mb-auto, .my-auto {
        margin-bottom: auto!important;
    }
    
    .mt-auto, .my-auto {
        margin-top: auto!important;
    }
    
    @media (min-width: 768px) {
        .pt-md-0, .py-md-0 {
            padding-top: 0!important;
        }
    }
    
    .article-content h1, .article-content .h1, h1.section-header, p.section-header, .article-content h2, .article-content h3, .article-section h2 {
        text-align: center;
        font-weight: 700;
        font-size: 1.25em;
        margin-bottom: 1rem;
        text-transform: uppercase;
        overflow: hidden;
    }
    .article-content h1 span:not(#pagetitle), .article-content .h1 span:not(#pagetitle), h1.section-header span:not(#pagetitle), p.section-header span, .header-with span {
        display: inline-block;
        position: relative;
    }
    .article-content h1 span:not(#pagetitle):before, .article-content .h1 span:not(#pagetitle):before, h1.section-header span:not(#pagetitle):before, p.section-header span:before, .header-with span:before {
        content: '';
        display: inline-block;
        width: 75px;
        height: 20px;
        background: url(assets/img/iconss.svg) no-repeat;
        background-position: 0 -60px;
        margin-right: .5rem;
        vertical-align: middle;
        position: absolute;
        top: 50%;
        left: 0;
        transform: translate3d(-90px, -50%, 0);
    }
    .article-content h1 span:not(#pagetitle):after, .article-content .h1 span:not(#pagetitle):after, h1.section-header span:not(#pagetitle):after, p.section-header span:after, .header-with span:after {
        content: '';
        display: inline-block;
        width: 75px;
        height: 20px;
        background: url(assets/img/iconss.svg) no-repeat;
        background-position: 0 -40px;
        margin-left: .5rem;
        vertical-align: middle;
        position: absolute;
        top: 50%;
        right: 0;
        transform: translate3d(90px, -50%, 0);
    }
    .hdr-top-link:before {
        content: '\26ab';
        font-size: 0.4em;
        margin-right: 0.7em;
        transform: translateY(-20%);
        display: inline-block;
        vertical-align: middle;
    }
    
    .position-static {
        position: static!important;
    }
    .position-relative {
        position: relative!important;
    }
    
    .minicart {
        position: relative;
        z-index: 100;
    }
    
    .minicart > span {
        transform: translateY(0);
        display: inline-block;
    }
    
    .minicart > span:before {
        width: 20px;
        height: 20px;
        background: url(assets/img/iconss.svg) no-repeat;
        background-position: 0 0;
    }
    
    .minicart > span:before, .hdr-address-text:before, .callme-btn-measure:before, .callme-btn-call:before, .ftr-address-text:before, .ftr-address-link:before, .ftr-schedule:before, .ftr-paymethods:before, .ftr-actions button:before, .btn-call-modal:before {
        margin-right: 0.5em;
    }
    
    .minicart > span:before, .hdr-address-text:before, .hdr-address-list:before, .callme-btn-measure:before, .callme-btn-call:before, .ftr-address-text:before, .ftr-address-link:before, .ftr-schedule:before, .ftr-paymethods:before, .ftr-actions button:before, .btn-call-modal:before {
        content: '';
        display: inline-block;
        border-radius: 50%;
        vertical-align: text-bottom;
    }
    @media (min-width: 768px) {
        .offset-md-1 {
            margin-left: 8.333333%;
        }
        .mr-md-auto, .mx-md-auto {
            margin-right: auto!important;
        }
    }
    @media (min-width: 992px) {
        .pb-lg-0, .py-lg-0 {
            padding-bottom: 0!important;
        }
        
        .pt-lg-0, .py-lg-0 {
            padding-top: 0!important;
        }
    }
    
    @media (min-width: 1200px) {
        .pb-xl-4, .py-xl-4 {
            padding-bottom: 1.5rem!important;
        }
        .pt-xl-4, .py-xl-4 {
            padding-top: 1.5rem!important;
        }
    }
    
    .metrod {
        border-right: 1px solid #212529;
    }
    
    .hdr-call-link {
        color: #212529;
        font-weight: 700;
        font-size: 1.2rem;
    }
    button, input, optgroup, select, textarea {
        margin: 0;
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;
        border-radius: 0;
        overflow: visible;
        text-transform: none;
        -webkit-appearance: button;
    }
    .hdr-search {
        position: relative;
        width: 100%;
        max-width: 280px;
    }
    .hdr-search {
        background: transparent;
        border: 1px solid #212529;
        color: #212529;
        border-radius: 1rem;
        padding: 0 .75rem;
        line-height: 26px;
        text-transform: uppercase;
        cursor: pointer;
        display: inline-block;
        max-width: 175px;
        transition: all .3s ease;
    }
    .hdr-search:after {
        content: '';
        display: inline-block;
        margin-left: 1rem;
        width: 26px;
        height: 26px;
        background: url(assets/img/social-icons-n.svg) -92px -8px no-repeat;
        vertical-align: middle;
    }
    .hdr-social {
        display: inline-block;
        width: 42px;
        height: 42px;
        vertical-align: middle;
        margin-left: 1rem;
        background-image: url(assets/img/social-icons-n.svg);
        background-repeat: no-repeat;
        overflow: hidden;
        flex-shrink: 0;
    }
    .hdr-social span {
        max-width: 0;
        opacity: 0;
    }
    .hdr-social.hdr-fb {
        background-position: 0 0;
    }
    .hdr-social.hdr-ig {
        background-position: -42px 0;
    }
    .list-unstyled {
        padding-left: 0;
        list-style: none;
    }
    .navcont-link {
        text-decoration: none;
        color: #fff;
    }
    figure {
        margin: 0 0 1rem;
    }
    .nav-container figcaption {
        background: #007257;
        color: #fff;
        text-transform: uppercase;
        text-align: center;
        padding: .5rem;
        font-weight: 700;
    }
    .nav-container .navcont-link + ul, .nav-container figure + ul {
        list-style: none;
        text-align: center;
        font-weight: 700;
        padding: 0 0 1rem 0;
    }
    .nav-container .navcont-link + ul a, .nav-container figure + ul a {
        color: #544c47;
    }
    dl, ol, ul {
        margin-top: 0;
        margin-bottom: 1rem;
    }
    ol ol, ol ul, ul ol, ul ul {
        margin-bottom: 0;
    }
    .languages li {
        display: inline-block;
        padding: .6em .6em;
        text-align: center;
        font-weight: 700;
        font-size: .9em;
    }
    .languages li.active {
        background: #fff;
        padding: .6em 0;
        border-radius: 100%;
        width: 40px;
        height: 40px;
    }
    .languages li.active {
        color: #007257;
    }
    .languages a {
        color: #fff;
    }
    .slick-slider {
        position: relative;
        display: block;
        box-sizing: border-box;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        -webkit-touch-callout: none;
        -khtml-user-select: none;
        -ms-touch-action: pan-y;
        touch-action: pan-y;
        -webkit-tap-highlight-color: transparent;
    }
    .home-slider {
        height: auto;
        overflow-y: hidden;
        position: relative;
        line-height: 2.4rem!important;
        font-size: 2rem;
        text-align: center;
    }
    .slick-track:before, .slick-track:after {
        display: table;
        content: '';
    }
    .slick-track {
        position: relative;
        top: 0;
        left: 0;
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
    .slick-slider .slick-track, .slick-slider .slick-list {
        -webkit-transform: translate3d(0, 0, 0);
        -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
        -o-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }
    .slick-slide img {
        display: block;
    }
    .slick-initialized .slick-slide {
        display: block;
    }
    .slick-slide {
        display: none;
        float: left;
        height: 100%;
        min-height: 1px;
    }
    .home-slide-wrapper {
        display: inline-block;
    }
    .home-slider-img {
        margin-left: auto;
        max-width: 100%;
        height: auto;
    }
    .carousel-arrow {
        position: absolute;
        top: 50%;
        display: block;
        width: 46px;
        height: 46px;
        border: 3px solid #fe8a01;
        border-radius: 50%;
        background: #fff;
        outline: 0;
        z-index: 2;
        cursor: pointer;
        background: url(assets/img/iconss.svg) no-repeat, #fff;
        transition: all .2s ease;
    }
    .home-slider .arrow-prev {
        left: 1rem;
        transform: translate3d(0,-50%,0);
        background-position: -140px 0;
    }
    .home-slider .arrow-next {
        right: 1rem;
        transform: translate3d(0,-50%,0);
        background-position: -98px 0;
    }
    @media (max-width: 991px) {
        .mainmenu {
            max-height: 0;
            overflow-y: hidden;
            -o-transition: all .4s ease-out;
            transition: all .4s ease-out;
            -webkit-transition: all .4s ease-out;
            padding-top: 0;
        }
    }
    a:not([href]):not([tabindex]) {
        color: inherit;
        text-decoration: none;
    }
    .t-btn {
        cursor: pointer;
    }
    @media (max-width: 991px) {
        .mobile-nav-icon {
            display: block;
            width: 40px;
            height: 40px;
            position: absolute;
            top: .4rem;
            left: .4rem;
            background: #fff;
            border: 0;
            border-radius: 50%;
            z-index: 9;
            -webkit-transform: translateZ(1px);
            transform: translateZ(1px);
        }
        .mobile-bar {
            display: inline-block;
            width: 24px;
            height: 4px;
            background: #544c47;
            border-radius: 1px;
            position: absolute;
            left: 50%;
            -o-transition: all .2s ease;
            transition: all .2s ease;
            -webkit-transition: all .2s ease;
        }
        .m-bar1 {
            top: 50%;
            transform: translate3d(-50%,-10px,0);
            -webkit-transform: translate3d(-50%,-10px,0);
        }
        .m-bar2 {
            top: 50%;
            transform: translate3d(-50%,-2px,0);
            -webkit-transform: translate3d(-50%,-2px,0);
        }
        .m-bar3 {
            top: 50%;
            transform: translate3d(-50%,6px,0);
            -webkit-transform: translate3d(-50%,6px,0);
        }
        .mobile-nav-icon:after {
            content: attr(data-after);
            color: #fff;
            position: absolute;
            top: .7rem;
            left: 120%;
            display: inline-block;
            line-height: 1rem;
            text-transform: uppercase;
            font-weight: 700;
            white-space: nowrap;
            font-size: .8rem;
        }
        .mainmenu .has-container > a {
            position: relative;
            display: inline-block;
        }
        .mainmenu .has-container > a[aria-expanded=false]:before {
            content: '';
            display: block;
            position: absolute;
            top: 50%;
            left: 100%;
            transform: translate3d(20px,1px,0);
            width: 0;
            height: 0;
            border-style: solid;
            border-width: 7px 7px 0 7px;
            border-color: #8c8480 transparent transparent transparent;
        }
        .mainmenu .has-container > a[aria-expanded=false]:after {
            content: '';
            display: block;
            position: absolute;
            top: 50%;
            left: 100%;
            width: 14px;
            height: 3px;
            background: #8c8480;
            transform: translate3d(20px,-5px,0);
        }
        .collapse:not(.show) {
            display: none;
        }
        .mainmenu .has-container ul > li {
            margin: .4rem 0;
        }
    }
    .second-mobile-list {
        border-top: 1px solid #fff;
        padding-top: 1rem;
    }
    .second-mobile-list li {
        margin: .5rem 0;
    }
    #filterdock.active {
        z-index: 999999!important;
        width: 100%!important;
    }
    #filterdock.active form#mse2_filters {
        width: 96%;
    }
    #filterdock.active {
        padding: 4rem .5rem 1rem .5rem!important;
    }
    #filterdock.active #closefilters {
        top: .5rem!important;
    right: 50%!important;transform: translateX(50%);
    }
    .wrap_b362 {
        z-index: 99!important;
    }
    .second-mobile-list li a {
        text-transform: unset!important;
    }
    .mobile-languages {
        position: absolute;
        top: .4rem;
        right: .5rem;
        z-index: 999;
    }
    .mobile-languages li {
        display: inline-block;
        padding: .6em .6em;
        text-align: center;
        font-weight: 700;
        font-size: .9em;
    }
    .mobile-languages li.active {
        background: #fff;
        padding: .6em 0;
        border-radius: 100%;
        width: 40px;
        height: 40px;
    }
    .mobile-languages li.active {
        color: #544c47;
    }
    .mobile-languages a {
        color: #fff;
    }
    .brandinmenu {
        width: 16.5%;flex-basis: 16.5%; flex-shrink: 0; flex-grow: 0; text-decoration: none!important;
    }
    .brandinmenu img {
        height: 40px; max-width: 100px;
    }
    @media (min-width: 992px) {
        .text-lg-left {
            text-align: left!important;
        }
        .brandinmenu:hover img {
            transform: scale3d(1.1,1.1,1.1);
            transition: all .3s ease;
        }
    }
    </style-->
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    [[*template:is=`5`:then=``:else=`<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">`]]
    <link rel="stylesheet" href="/assets/css/berezha-n.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" defer>
    
    <style>
        html, body {
            font-family: 'Open Sans Condensed';
            font-size: 1em;
            letter-spacing: 1px;
            font-weight: 300;
        }
        
        .st-widget__btn-call-me {
            width: 54px!important; height: 54px!important; bottom: 1rem!important; left: 1rem!important;
        }
        .st-widget__btn-call-me i {
            width: 54px!important; height: 54px!important; background-size: 30px 30px!important;
        }
        .st-widget__btn-call-me #st-widget__btn-call-me__circle {
            width: 54px!important; height: 54px!important;
        }
        .st-widget__btn-call-me p {
            left: 0 !important;
        }
.cookie-alert {
  position: fixed;
  bottom: 15px;
  left: 15px;
  width: 320px;
  margin: 0 !important;
  z-index: 999;
  opacity: 0;
  transform: translateY(100%);
  transition: all 500ms ease-out;
}

.cookie-alert.show {
  opacity: 1;
  transform: translateY(0%);
  transition-delay: 1000ms;
}        
.text-black{
font-weight: 700;
text-transform: uppercase;
position: relative;
cursor: pointer;
display: flex;
align-items: baseline;
color: #212529;
line-height: 24px;
}
#tns1-iw {
  margin: 0px -3px 0px 0px !important;
}
a {
  color: #007257;
  text-decoration: none;
  background-color: transparent;
  -webkit-text-decoration-skip: objects;
}
</style>
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
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
<link rel="stylesheet" href="/assets/button/style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css">
<!--[if (lt IE 9)]><script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/min/tiny-slider.helper.ie8.js"></script><![endif]-->
<link rel="stylesheet" href="/assets/slider/style.css">
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
<!--link rel="canonical" href="[[!+sf.url:default=`[[~[[*id]]? &scheme=`full`]]`]]"-->
[[++extra]]
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css'>
  <link rel="stylesheet" href="/assets/fancy/fancystyle.css" referrerpolicy="no-referrer" />
	 