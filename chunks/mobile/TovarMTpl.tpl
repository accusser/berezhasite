<div class="col-6 col-md-4">
              <div class="card product-card">
                <div class="card-body">
                    {if $new?}
                        <span class="badge rounded-pill badge-success">{'ms2_frontend_new' | lexicon}</span>
                        
                    {/if}<br>
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
                  <!--a class="wishlist-btn" href="#"><i class="fa-solid fa-heart"> </i></a-->
                  <!-- Thumbnail --><a class="product-thumbnail d-block" href="[[+uri]]">
                      <img class="mb-2" src="[[+thumb]]" alt="{$pagetitle}" class="lazy">
                {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $id, 'contextKey' => 'uk']}
                {'!ecThreadRating' | snippet : ['tpl' => '@FILE chunks/mobile/RatingTovarmobile.tpl', 'thread' => 'resource-' ~ $thread]}                          
                    </a>
                  <a class="product-title" href="[[+uri]]">
                        {if $titletovar?}
                        {$titletovar}
                        {else}
                        {$pagetitle}
                        {/if}                       
                  </a>
                  <p class="sale-price">
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
                  <div class="product-rating">
                  </div>
                  <a class="btn btn-success btn-sm" href="[[+uri]]"><i class="fa-solid fa-plus"></i></a>
                </div>
              </div>
            </div>