<div class="card product-card bg-gray shadow-none">

                <div class="card-body">
                    {if $new?}
                        <span class="badge rounded-pill badge-success">{'ms2_frontend_new' | lexicon}</span>
                    {/if}<br>
                  <a class="product-thumbnail d-block" href="[[+uri]]">
                      <img class="mb-2" src="[[+thumb]]" alt="{$pagetitle}" class="lazy">
                {set $thread = 'BabelTranslation' | snippet : ['resourceId' => $id, 'contextKey' => 'uk']}
                {'!ecThreadRating' | snippet : ['tpl' => '@FILE chunks/mobile/RatingTovarmobile.tpl', 'thread' => 'resource-' ~ $thread]}  
                    </a>
                  <a class="product-title" href="[[+uri]]">
                        {if $titletovar?}
                        {$pagetitle}
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
                  <a class="btn btn-success btn-sm" href="[[+uri]]"><i class="fa-solid fa-shopping-cart"></i></a>
                </div>
     
            </div>
