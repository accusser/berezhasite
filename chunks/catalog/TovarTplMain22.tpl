            <div class="ms2_product col-6 col-sm-6 col-md-3 mb-3 px-2 product-card__image">
              <div class="product text-center">
                <a href="{$uri}" class="clr3" title="{$_modx->resource.pagetitle} {$pagetitle}">
                    <picture>
                        <source srcset="{$thumb}" type="image/webp">
                        <source srcset="{$thumb}" type="image/jpg">
                        <img src="{$thumb}" alt="{$_modx->resource.pagetitle} {$pagetitle}" title="{$_modx->resource.pagetitle} {$pagetitle}" class="lazy img-fluid">
                    </picture>

                    
                <div class="flags ">
                    {if $new?}
                        <span class="badge badge-secondarynew  badges-pill mr-md-1">{'ms2_frontend_new' | lexicon}</span>
                    {/if}
                    {if $popular?}
                        <span class="badge badge-secondarytop badges-pill mr-md-1">{'ms2_frontend_popular' | lexicon}</span>
                    {/if}
                    {if $favorite?}
                        <span class="badge badge-secondaryfav badges-pill mr-md-1"> {'ms2_frontend_favorite' | lexicon}</span>
                    {/if}
                    {if $sklad?}
                        <span class="badge badge-secondarysklad badges-pill mr-md-1"> {'ms2_frontend_sklad' | lexicon}</span>
                    {/if}                    
                </div>                      
                    
                </a>
                               
                <div class="product-info">
                  <p class="font-weight-bold text-uppercase h4">
                      <a href="{$uri}" class="clr3" title="{$_modx->resource.pagetitle} {$pagetitle}"> 
                      
                        {if $titletovar?}
                        {$titletovar}
                        {else}
                        {$pagetitle}
                        {/if}     
                
                      </a></p>
                {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $id, 'contextKey' => 'uk']}
                {'!ecThreadRating' | snippet : [
                  'tpl' => '@FILE chunks/catalog/RatingTovar.tpl',
                  'starsTheme' => 'stars3',
                  'thread' => 'resource-' ~ $thread
                  ]}
                  	{$_modx->runSnippet('msOptions', [
                		'product' => $id,
                		'options' => 'tags',
                		'tpl' => '@FILE chunks/catalog/ProductOptions.tpl',
                	  ])}                       
                  	  {$_modx->runSnippet('msOptions', [
                		'product' => $id,
                		'options' => 'brand,made_in,available',
                		'tpl' => '@FILE chunks/catalog/msOptionsTags.tpl',
                	  ])}
                
                    {if $old_price?}
                        <span class="old_price ml-md-3"><del>{$old_price} {'ms2_frontend_currency' | lexicon}</del></span>
                    {/if}                  
                  <p class="price clr1 font-weight-bold">
{if $price==0?}

{if $_modx->context.key == 'web'}
Цена по запросу
{else}
Ціна за запитом
{/if}
{else}
{$price} {'ms2_frontend_currency' | lexicon}
{/if}                     
                  </p>

        
                  <a href="{$uri}" class="product-link" title="{$_modx->resource.pagetitle} {$pagetitle}">{'ms2_frontend_add_to_cart' | lexicon}</a>
 

        
                </div>
              </div>
            </div>
 
