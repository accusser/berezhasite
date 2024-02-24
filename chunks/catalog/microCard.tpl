<meta itemprop="mpn" content="[[*id]]" />
<meta itemprop="name" content="[[*pagetitle]]" />
{'msGallery' | snippet : [
'limit' => '3',
'tpl' => '@FILE chunks/catalog/msGalleryOne2.tpl',
]}
<meta itemprop="description" content="[[!++[[*description]]]]" />
<div itemprop="offers" itemtype="https://schema.org/Offer" itemscope>
  <meta itemprop="category" content="[[#[[*parent]].pagetitle]]">
  <link itemprop="url" href="[[++site_url]][[*uri]]" />
  <meta itemprop="availability" content="https://schema.org/InStock" />
  <meta itemprop="priceCurrency" content="UAH" />
  <meta itemprop="itemCondition" content="https://schema.org/NewCondition" />
  <meta itemprop="offerCount" content="1">
  <meta itemprop="price" content="[[+price:replace=` ==`]]">
  <meta itemprop="lowPrice" content="[[+price:replace=` ==`]]">
  <meta itemprop="priceValidUntil" content="2029-12-31" />
</div>
<div itemprop="aggregateRating" itemtype="https://schema.org/AggregateRating" itemscope>
  <meta itemprop="reviewCount" content="[[!rand50]]" />
  <meta itemprop="ratingValue" content="[[!rand4]]" />
</div>
<div itemprop="review" itemtype="https://schema.org/Review" itemscope>
  <div itemprop="author" itemtype="https://schema.org/Person" itemscope>
    <meta itemprop="name" content="Berezha" />
  </div>
  <div itemprop="reviewRating" itemtype="https://schema.org/Rating" itemscope>
    <meta itemprop="ratingValue" content="4" />
    <meta itemprop="bestRating" content="5" />
  </div>
</div>
<meta itemprop="sku" content="[[+article:default=`-`]]" />
<div itemprop="brand" itemtype="https://schema.org/Brand" itemscope>
  <meta itemprop="name" content="{'msOptions' | snippet : [
                       'product' => $_modx->resource.id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/Tags2.tpl',
                	   ]}" />
</div>