<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="{$_modx->config.cultureKey}">
  <head>
    {block 'seo'}
    {/block}      
    {include 'file:chunks/head.tpl'} 
    {block 'styles'}
    {/block}
  </head>
  <body>
    {include 'file:chunks/gtm.tpl'} 
    <div class="page-wrapper d-flex flex-column">
    {include 'file:chunks/header.tpl'}   
    {block 'content'}
    {'PageBlocks' | snippet : [
        'context' => $_modx->context.key,
        'cultureKey' => $_modx->config.cultureKey,
    ]}  
    <article class="article-section bg2 container-fluid">
      <div class="container col-lg-9 catalog">
        <div class="row py-5">
          <div class="article-content col-12">
            {'content' | resource}
          </div>
        </div>
      </div>
    </article>  
    {/block}
    {if $_modx->context.key == 'web'}
    {include 'file:chunks/footerru.tpl'}
    {else}
    {include 'file:chunks/footeruk.tpl'}
    {/if}
    </div>
    {include 'file:chunks/scripts.tpl'} 
    {block 'script'} 
    <script>
      $(document).ready(function(){
        $('.partner-carousel').slick({
          autoplay: true,
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 3,
          nextArrow:'<button class="carousel-arrow arrow-next" aria-label="Следующий" type="button"></button>',
          prevArrow:'<button class="carousel-arrow arrow-prev" aria-label="Предыдущий" type="button"></button>',
          responsive: [
            {
              breakpoint: 1300,
              settings: {
                slidesToShow: 4,
                slidesToScroll: 4
              }
            },
            {
              breakpoint: 1100,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3
              }
            },
            {
              breakpoint: 900,
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
        $('.photo-carousel').slick({
          autoplay: true,
          infinite: true,
          slidesToShow: 4,
          slidesToScroll: 3,
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
        $('.product-carousel').slick({
          autoplay: true,
          infinite: true,
          slidesToShow: 4,
          slidesToScroll: 4,
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
        $('.home-slider').slick({
          autoplay: true,
          infinite: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          dots: false,
          fade: true
        });
        

      });
    </script>
    {/block}
  </body>
</html>