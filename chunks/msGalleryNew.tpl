
<div id="msGallery" class="msoptionsprice-gallery">
 {if $files?}  
 {set $slides = ''}
        {foreach $files as $file}
            {set $slides = $slides ~ '<div class="swiper-slide">
            <a href="'~$file['medium']~'" data-rid="'~$file['product_id']~'" data-iid="'~$file['id']~'" data-fancybox="gallery" data-caption="'~$file['name']~'" >
             <img src="'~$file['medium']~'" alt="'~$file['description']~'" title="'~$file['name']~'">
            </a>
            </div>'}
        {/foreach}
 <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
    <div class="swiper-wrapper">
      {$slides}
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>
    {/if}
 {if $files?}  
 {set $slides = ''}
        {foreach $files as $file}
            {set $slides = $slides ~ '<div class="swiper-slide">
            <img src="'~$file['medium']~'" alt="'~$file['description']~'" title="'~$file['name']~'"></div>'}
        {/foreach}    
  <div thumbsSlider="" class="swiper mySwiper">
    <div class="swiper-wrapper">
      {$slides}
    </div>
  </div>
{/if}
 </div>  