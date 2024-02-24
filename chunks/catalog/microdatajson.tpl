<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type": "Product",
"url": "{$_modx->config.site_url}{$_modx->resource['id'] | url}",
"category": "{$id | pdoField : '{"field":"pagetitle", "top":3}'}",
"image": "{$_modx->config.site_url}{$thumb}",
"brand": "{'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'ignoreOptions' => 'notice', 'options' => 'brand', 'tpl' => '@FILE chunks/catalog/msOptionsTagsnull.tpl', ]}",
"manufacturer": "{'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'ignoreOptions' => 'notice', 'options' => 'brand', 'tpl' => '@FILE chunks/catalog/msOptionsTagsnull.tpl', ]}",
"model": "{$_modx->resource.id}",
"mpn": "{$_modx->resource.id}",
"sku": "{$_modx->resource.id}",
"description": "{$_modx->resource.description?: $_modx->resource.pagetitle}",
"name": "{$_modx->resource.longtitle?: $_modx->resource.pagetitle}",
"offers": {
"@type": "Offer",
"availability": "http://schema.org/InStock",
"price": "{$price}",
"priceValidUntil": "2025-11-02",
"url": "{$_modx->config.site_url}{$_modx->resource['id'] | url}",
"priceCurrency": "UAH",
"itemCondition": "http://schema.org/NewCondition"
},"additionalProperty":[
{
"@type": "PropertyValue",
"name": "Доставка/Оплата",
"value": "{'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'ignoreOptions' => 'notice', 'options' => 'available', 'tpl' => '@FILE chunks/catalog/msOptionsTagsnull.tpl', ]}"
},{
"@type": "PropertyValue",
"name": "{if $_modx->context.key == 'web'}Наличие{else}Наявність{/if}",
"value": "{'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'ignoreOptions' => 'notice', 'options' => 'available', 'tpl' => '@FILE chunks/catalog/msOptionsTagsnull.tpl', ]}"
},
{'msOptions' | snippet : [ 'product' => $_modx->resource.id, 'ignoreOptions' => 'notice', 
'options' => 'made_in,tags,filter_material,product_wood,otdelka', 'tpl' => '@FILE chunks/catalog/jsonoption.tpl', ]}
{
"@type": "PropertyValue",
"name": "{if $_modx->context.key == 'web'}Купить в{else}Купити в{/if}",
"value": "{if $_modx->context.key == 'web'}Киеве{else}Київі{/if}"
}]
}
</script>

<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type": "ImageObject",
"author": "Салон дверей Бережа",
"thumbnailUrl": "{$_modx->config.site_url}{$thumb}",
"contentUrl": "{$_modx->config.site_url}{$thumb}",
"datePublished": "2021-02-17",
"description": "{$_modx->resource.description?: $_modx->resource.pagetitle}",
"name": "{$_modx->resource.longtitle?: $_modx->resource.pagetitle}"
}
</script>