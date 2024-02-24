<div class="article-section col-md-4">
  <div class="py-5 h-100 d-flex flex-column justify-content-between">
    <div class="article-content col-12">
      <a href="{$uri}" title="{$pagetitle}">
        <picture>
          <img alt="{$pagetitle}" src="{$image | phpthumbof : 'w=387&h=218&zc=1'}"
            class="img-fluid mx-auto mb-3" loading="lazy">
        </picture>
      </a>
      <p class="h1"><a href="{$uri}">{$pagetitle}</a></p>
      <p class="text-justify text-indent-0 mb-0">[[+content:ellipsis=`200`:striptags]]</p>
    </div>
  </div>
</div>