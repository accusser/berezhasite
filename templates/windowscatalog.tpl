{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
          <span>{$_modx->resource.pagetitle}</span></h1>
        {$_modx->resource.extracontent}
      </div>
      <div class="row catalog">
        [[*id:is=`7444`:or:is=`16473`:then=`
        {'pdoResources' | snippet : [
        'parents' => $_modx->resource.id,
        'where' => '{"template":"20"}',
        'tpl' => '@FILE chunks/tovarokno.tpl',
        'includeTVs' => 'product_image,minwindprice',
        'tvPrefix' => '',
        'sortby' => 'menuindex',
        'sortdir' => 'ASC',
        'limit' => '0'
        ]}
        `:else=`
        {'PageBlocks' | snippet : [
        'context' => $_modx->context.key,
        'cultureKey' => $_modx->config.cultureKey,
        ]}
        `]]
      </div>
      <div class="article-content col-12">
        {$_modx->resource.content}
      </div>
    </div>
  </div>
</section>
{/block}
{block 'script'}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script>
  $(document).ready(function () {
    $('.photo-carousel').slick({
      autoplay: true,
      infinite: true,
      slidesToShow: 4,
      slidesToScroll: 3,
      nextArrow: '<button class="carousel-arrow arrow-next" aria-label="Следующий" type="button"></button>',
      prevArrow: '<button class="carousel-arrow arrow-prev" aria-label="Предыдущий" type="button"></button>',
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
  });
</script>
{/block}