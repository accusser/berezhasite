{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
          <span>{$_modx->resource.pagetitle}</span>
        </h1>
        {$_modx->resource.content}
      </div>
    </div>
    {'pdoResources' | snippet : [
    'parents' => '',
    'tpl' => '@FILE chunks/photoalbum.tpl',
    'sortdir' => 'ASC',
    'limit' => '0',
    ]}
  </div>
</section>
{/block}
{block 'script'}
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