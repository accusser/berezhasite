<div class="msearch2" id="mse2_mfilter">
<form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
<div class="offcanvas offcanvas-start suha-filter-offcanvas-wrap" tabindex="-1" id="suhaFilterOffcanvas" aria-labelledby="suhaFilterOffcanvasLabel">
      <button class="btn-close text-reset" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
     
      <div class="offcanvas-body py-5">
        
        <div class="container">
          <div class="row">
            {$filters}
            {if $filters}
                <div class="col-12">
                    <div class="apply-filter-btn"><button class="btn btn-success w-100 hidden" type="reset">{'mse2_reset' | lexicon}</button></div>
                </div>
            {/if}            
          </div>
        </div>
        
      </div>
      
    </div>
</form>      
<div class="page-content-wrapper">
      <div class="py-3">
        <div class="container">
          <div class="row g-1 align-items-center rtl-flex-d-row-r">
            <div class="col-8">
              <div class="product-catagories owl-carousel catagory-slides">
              </div>
            </div>
            
            <div class="col-4" id="mse2_sort">
              <div class="select-product-catagory">
{if $_modx->context.key == 'web'}
<select class="nice-select right small border-0 sorting__cat"  id="mse2_sort">
        <option value="desc" data-sort="resource|published:desc" selected>По умолчанию</option>
        <option class="sort" data-sort="resource|pagetitle" value="asc">Название (А - Я)</option>
        <option class="sort" data-sort="resource|pagetitle" value="desc">Название (Я - А)</option>
        <option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
        <option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>        
</select>
{else}
<select class="nice-select right small border-0 sorting__cat"  id="mse2_sort">
        <option value="desc" data-sort="resource|published:desc" selected>За замовчуванням</option>
        <option class="sort" data-sort="resource|pagetitle" value="asc">Назва (А – Я)</option>
        <option class="sort" data-sort="resource|pagetitle" value="desc">Назва (Я – А)</option>
        <option class="sort" data-sort="ms|price" value="asc">Ціна (за зростанням)</option>
        <option class="sort" data-sort="ms|price" value="desc">Ціна (за спаданням)</option>        
</select>
{/if}
         
              </div>
            </div>
          </div>
          <div class="mb-3"></div>
          <div class="row g-2 rtl-flex-d-row-r" id="mse2_results">
              {$results}
          </div>
         <div class="mse2_pagination">
            {'page.nav' | placeholder}
        </div>         
        </div>
      </div>
    </div>

  
</div>
<script>
$(document).ready(function(){
	$('.selectheader').click(function(){
        	$('.selectbody').slideToggle('fast');
	});
});

$(document).on('mse2_load', function(){
	var active = $('.sort.active').html();
	$('.selectheader').html(active);
	$('.selectbody').slideToggle('fast');
});
</script>