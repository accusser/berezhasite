{extends 'file:templates/index.tpl'}
{block 'styles'}
<style>
  a[data-fancybox] img {
    cursor: zoom-in;
  }

  .fancybox__backdrop::after {
    content: "";
    position: absolute;
    width: 10%;
    height: 10%;
    filter: blur(2px);
    left: 50%;
    top: 50%;
    transform: scale(11);
    opacity: 0.3;
    background-image: var(--bg-image);
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
  }

  .fancybox__container {
    --fancybox-bg: #000;

    --fancybox-thumbs-width: 48px;
    --fancybox-thumbs-ratio: 1;

    --carousel-button-bg: rgb(91 78 76 / 74%);

    --carousel-button-svg-width: 24px;
    --carousel-button-svg-height: 24px;

    --carousel-button-svg-stroke-width: 2.5;
  }

  .fancybox__nav {
    --carousel-button-svg-width: 24px;
    --carousel-button-svg-height: 24px;
  }

  .fancybox__nav .carousel__button.is-prev {
    left: 20px;
  }

  .fancybox__nav .carousel__button.is-next {
    right: 20px;
  }

  .carousel__button.is-close {
    right: auto;
    top: 20px;
    left: 20px;
  }

  .fancybox__slide {
    padding: 8px 88px;
  }

  /* Thumbnails */
  .fancybox__thumbs .carousel__slide {
    padding: 8px 8px 16px 8px;
  }

  .is-nav-selected::after {
    display: none;
  }

  .fancybox__thumb {
    border-radius: 6px;
    opacity: 0.4;
  }

  .fancybox__thumb:hover,
  .is-nav-selected .fancybox__thumb {
    border-radius: 6px;
    opacity: 1;
  }

  .is-nav-selected .fancybox__thumb::after {
    display: none;
  }
</style>
{/block}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
          <span>{$_modx->resource.pagetitle}</span></h1>
        {$_modx->resource.content}
      </div>
    </div>
    <div class="row photoalbum">
      {'PageBlocks' | snippet : [
      'context' => $_modx->context.key,
      'cultureKey' => $_modx->config.cultureKey,
      ]}
    </div>
  </div>
</section>
{/block}
{block 'script'}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
{/block}