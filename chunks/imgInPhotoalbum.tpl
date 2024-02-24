{foreach $photos as $photo}
<div class="text-center">
    <picture>
        <source type="image/webp" srcset="{$photo.url | phpthumbof : 'w=300&h=220&zc=1&f=webp'}">
        <img src="{$photo.url | phpthumbof : 'w=300&h=220&zc=1'}" alt="[[+alt]]" class="img-fluid">
    </picture>
</div>
{/foreach}