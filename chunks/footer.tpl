<footer class="mt-auto">
      <div class="container-fluid bg4 pt-5 pb-3">
         
<div class="article-section bg4 container-fluid py-4">
          <div class="container col-lg-9 catalog">
           
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2 class="text-center font-weight-bold text-white">
                       {'footerbrandtitle' | config}
                    </h2>
                </div>
            </div>
            <div class="row mt-3">
 
<div class="ms2_product col-12 col-sm-6 col-md-3 mb-3 px-2">
	{'!sfMenu'|snippet:[ 
	     'fast'=>'1',
	     'context'=>$_modx->context.key,
	     'sortby'=> 'total',
	     'sortdir'=> 'DESC',
	     'rules'=> '81,82,89,90',
	     'tplOuter'=> '@FILE chunks/SeoLinksOuter.tpl',
	     'showHidden'=> '0',
	     'levelClass'=> 'level',
	     'parentClass'=> 'parent',
	     'tpl'=> '@FILE chunks/SeoLinksTpl.tpl',
	     'selfClass'=> 'self',
	]}    
</div>
<div class="ms2_product col-12 col-sm-6 col-md-3 mb-2 px-2">
	{'!sfMenu'|snippet:[ 
	     'fast'=>'1',
	     'context'=>$_modx->context.key,
	     'sortby'=> 'total',
	     'sortdir'=> 'DESC',
	     'rules'=> '69,70,83,84',
	     'tplOuter'=> '@FILE chunks/SeoLinksOuter.tpl',
	     'showHidden'=> '0',
	     'levelClass'=> 'level',
	     'parentClass'=> 'parent',
	     'tpl'=> '@FILE chunks/SeoLinksTpl.tpl',
	     'selfClass'=> 'self',
	]}     

</div>
<div class="ms2_product col-12 col-sm-6 col-md-3 mb-3 px-2">
	{'!sfMenu'|snippet:[ 
	     'fast'=>'1',
	     'context'=>$_modx->context.key,
	     'sortby'=> 'total',
	     'sortdir'=> 'DESC',
	     'rules'=> '74,75,73,76,85,86,87,88',
	     'tplOuter'=> '@FILE chunks/SeoLinksOuter.tpl',
	     'showHidden'=> '0',
	     'levelClass'=> 'level',
	     'parentClass'=> 'parent',
	     'tpl'=> '@FILE chunks/SeoLinksTpl.tpl',
	     'selfClass'=> 'self',
	]}         
</div>
<div class="ms2_product col-12 col-sm-6 col-md-3 mb-3 px-2">
	{'!sfMenu'|snippet:[ 
	     'fast'=>'1',
	     'context'=>$_modx->context.key,
	     'sortby'=> 'total',
	     'sortdir'=> 'DESC',
	     'rules'=> '79,80,71,72,77,78',
	     'tplOuter'=> '@FILE chunks/SeoLinksOuter.tpl',
	     'showHidden'=> '0',
	     'levelClass'=> 'level',
	     'parentClass'=> 'parent',
	     'tpl'=> '@FILE chunks/SeoLinksTpl.tpl',
	     'selfClass'=> 'self',
	]}    
</div>

            </div>
          </div>
        </div>
        
        <div class="container">

          <div class="row justify-content-between flex-column-reverse flex-xl-row">
            <div class="col-xl-7 col-lg-12 px-2 text-center text-md-left">
              <div class="row pb-3 mx-0">
                
              </div>
              <div class="row pb-3 mx-0">
                  <div class="col-md-6 pl-0 mb-4 mb-md-0">
                        <p class="m-0 ftr-address-link"><a href="{if $_modx->context.key == 'web'}{'27' | url}{else}{'12663' | url}{/if}#berezha-goloseevo" class="text-white">
                            {if $_modx->context.key == 'web'}
                            пр-т  Голосеевский 17
                            {else}
                            пр-т Голосіївський 17
                            {/if}                           
                        </a></p>
                        <p class="m-0 ftr-address-text py-2"><strong><span class="text-white ringoclass">{'phoned' | config}</span></strong> 
                  </div>
                  <div class="col-md-6 pl-0">
                      <p class="m-0 ftr-address-link"><a href="{if $_modx->context.key == 'web'}{'27' | url}{else}{'12663' | url}{/if}#berezha-zlatoustivska" class="text-white">
                        {if $_modx->context.key == 'web'}
                        ул. Златоустовская 55
                        {else}
                        вул. Златоустівська 55
                        {/if}                            
                      </a></p>
                        <p class="m-0 ftr-address-text py-2"><strong><span class="text-white ringoclass">{'phonel' | config}</span></strong> 
                  </div>
              </div>
              <div class="row pb-3 mx-0">
                <div class="col-md-6 pl-0 mb-4 mb-md-0 m-0 ftr-paymethods text-white col-12">
                     {if $_modx->context.key == 'web'}Принимаем к оплате{else}Приймаємо до сплати{/if}: <img src="assets/img/money-icons.svg" width="180" height="36" alt="Payment Methods" loading="lazy"></div>
              </div>
            </div>
            <div class="col-xl-5 col-lg-12 px-2">
              <ul class="ftr-actions m-0 list-unstyled d-md-flex d-block align-items-center align-items-xl-end flex-xl-column py-xl-2 pb-4 h-100 justify-content-md-between text-center flex-wrap">
                <li class="mt-xl-auto mb-xl-3 mb-3">
<button type="button" class="text-white ftr-callme-btn-measure text-uppercase font-weight-bold border-0 py-2 px-3" data-bs-toggle="modal" data-bs-target="#zamer-call">
                    {'zamers' | config}
</button>
</li>


              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="container font-weight-bold">
        <div class="row py-3 copyright">
          &copy; 2010-{php}echo date('Y');{/php} ТМ "БЕРЕЖА" All Rights Reserved.
        </div>
         <div class="row py-3 copyright">
         <noindex> This site is protected by reCAPTCHA and the Google
<a target="_blank" href="https://policies.google.com/privacy">Privacy Policy</a> and<a target="_blank" href="https://policies.google.com/terms">Terms of Service</a> apply.
</noindex>
        </div>       
      </div>
    </footer>



<div class="btn-up btn-up_hide"></div>
    
    {if $_modx->hasSessionContext('mgr')}
{set $info = $_modx->getInfo('', false)}
Время работы: {$info.totalTime}
Время запросов: {$info.totalTime}
Количество запросов: {$info.queries}
Источник: {$info.source}
    <br>
{/if}

    {include 'file:chunks/modals.tpl'} 
    <div id="search-panel" class="search-panel">
        <div class="container">
            <div class="row">
                <p class="col-12 text-center sp-header">
                    <span>
                        {if $_modx->context.key == 'web'}
                        Поиск товара
                        {else}
                        Пошук товару
                        {/if}                        
                    </span>
                </p>
                <p class="col-12 text-center">
                        {if $_modx->context.key == 'web'}
                        по названию или по коду товара
                        {else}
                         за назвою або кодом товару 
                        {/if}                      
                </p>
                <div class="col-12">
{if $_modx->context.key == 'web'}
  {'!mSearchForm' | snippet : [
    'pageId' => '20241',
	'tplForm' => '@FILE chunks/mSearch2.form.tpl',
	'element' => 'msProducts',
	'class' => 'msProduct',
	'context' => '[[*context_key]]',
	'cultureKey' => '[[++cultureKey]]',
	'fields' => 'article:1,pagetitle:5,longtitle:3,content:1,description:1,filter_material:1,glass:1,tags:1,brand:1,style:1,product_wood:1,dopolnitelnoepole:1,stal:1,vid_vd:1,color:1'
]} 
{/if}
{if $_modx->context.key == 'uk'}
  {'!mSearchForm' | snippet : [
    'pageId' => '20242',
	'tplForm' => '@FILE chunks/mSearch2.form.tpl',
	'element' => 'msProducts',
	'class' => 'msProduct',
	'context' => '[[*context_key]]',
	'cultureKey' => '[[++cultureKey]]',
	'fields' => 'article:1,pagetitle:5,longtitle:3,content:1,description:1,filter_material:1,glass:1,tags:1,brand:1,style:1,product_wood:1,dopolnitelnoepole:1,stal:1,vid_vd:1,color:1'
]} 
{/if}
                </div>
            </div>
            
      <div class="pt-4">
                <div class="row"><p class="text-center"></p></div>
                <div class="search-inner row rows">
                  {'msProducts' | snippet : [          
            		'tpl' => '@FILE chunks/catalog/tovarinsearch.tpl',
            		'limit' => '3',
            		'parents' => 2,
            	  ]}                      
                </div>
            </div>           
        </div>

    </div>

<script>
    const btnUp = {
  el: document.querySelector('.btn-up'),
  show() {
    // удалим у кнопки класс btn-up_hide
    this.el.classList.remove('btn-up_hide');
  },
  hide() {
    // добавим к кнопке класс btn-up_hide
    this.el.classList.add('btn-up_hide');
  },
  addEventListener() {
    // при прокрутке содержимого страницы
    window.addEventListener('scroll', () => {
      // определяем величину прокрутки
      const scrollY = window.scrollY || document.documentElement.scrollTop;
      // если страница прокручена больше чем на 400px, то делаем кнопку видимой, иначе скрываем
      scrollY > 400 ? this.show() : this.hide();
    });
    // при нажатии на кнопку .btn-up
    document.querySelector('.btn-up').onclick = () => {
      // переместим в начало страницы
      window.scrollTo({
        top: 0,
        left: 0,
        behavior: 'smooth'
      });
    }
  }
}

btnUp.addEventListener();
</script>