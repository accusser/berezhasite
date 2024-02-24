
<div class="card flash-sale-card">
              <div class="card-body">
                  
                    {if $new?}
                        <span class="badge rounded-pill badge-success">{'ms2_frontend_new' | lexicon}</span>
                        
                    {/if}
                    {if $popular?}
                        <span class="badge rounded-pill badge-warning">Топ</span>
                        
                    {/if}
                    {if $favorite?}
                        <span class="badge rounded-pill badge-danger">{'ms2_frontend_favorite' | lexicon}</span>
                        
                    {/if}                  
                  
                  <a href="[[+uri]]"><img src="[[+thumb]]" width="126" height="94" alt="">
                      <span class="product-title">
                        {if $titletovar?}
                        {$titletovar}
                        {else}
                        {$pagetitle}
                        {/if}                        
                      </span>
                  <p class="sale-price">[[+price]] грн.<span class="real-price"></span></p><span class="progress-title"></span>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div></a></div>
            </div>