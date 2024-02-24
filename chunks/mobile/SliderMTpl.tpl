{$_modx->runSnippet('!pthumb', [
'input' => $_pls['tv.image'],
'options' => 'w=626&h=230q=60&zc=C&f=webp',
'toPlaceholder' => 'thumb'
])}
<div class="single-hero-slide" style="background-image: url('{$_modx->getPlaceholder('thumb')}')">
<div class="slide-content h-100 d-flex align-items-center">
<div class="slide-text">
<h4 class="text-white mb-0" data-animation="fadeInUp" data-delay="100ms" data-duration="1000ms">{$pagetitle}</h4>
<p class="text-white" data-animation="fadeInUp" data-delay="400ms" data-duration="1000ms"></p><a class="btn btn-primary" href="{$uri}" data-animation="fadeInUp" data-delay="800ms" data-duration="1000ms">
        [[!++localizator_lz_purchase]]</a>
  </div>
</div>
</div>