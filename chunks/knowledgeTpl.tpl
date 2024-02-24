<div class="article-section col-md-4">
  <div class="py-5 h-100 d-flex flex-column justify-content-between">
    <div class="article-content col-12">
      <a href="{$uri}" title="{$pagetitle}">
        <picture>
          <img alt="[[+longtitle]]" src="{$main_news_img | pthumb : 'w=387&h=218&zc=1$f=webp&q=65'}"
            class="img-fluid mx-auto mb-3" loading="lazy">
        </picture>
      </a>
      <p class="h1"><a href="{$uri}" title="{$pagetitle}">{$pagetitle}</a></p>
      <p class="text-justify text-indent-0 mb-0">{$content|truncate:200|notags}</p>
    </div>
    <div class="text-right pt-1">
      <a href="{$uri}" title="{$pagetitle}" class="read-more"><span
          class="link-arrow">&gt;</span>[[%language_moregoods]]</a>
    </div>
  </div>
</div>