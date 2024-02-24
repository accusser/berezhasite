{if $_modx->context.key == 'web'}
<div class="footer-nav-area" id="footerNav">
      <div class="suha-footer-nav">
        <ul class="h-100 d-flex align-items-center justify-content-between ps-0 d-flex rtl-flex-d-row-r">
          <li><a href="/"><i class="fa-solid fa-house"></i>
          Главная</a></li>
          <li><a href="{if $_modx->context.key == 'web'}{21027 | url}{else}{21026 | url}{/if}"><i class="fa-solid fa-door-closed"></i>Склад</a></li>
          <li><a href="{12643 | url}"><i class="fa-solid fa-earth-europe"></i>Бренды</a></li>
          <li><a href="{27 | url}"><i class="fa-solid fa-address-card"></i>Контакты</a></li>          
          <li><a rel="nofollow" type="button" data-fancybox="" href="#callsbacks">
              <i class="fa-solid fa-phone fa-beat"></i>Звонок</a></li>

        </ul>
      </div>
    </div>
{else}
<div class="footer-nav-area" id="footerNav">
      <div class="suha-footer-nav">
        <ul class="h-100 d-flex align-items-center justify-content-between ps-0 d-flex rtl-flex-d-row-r">
          <li><a href="/"><i class="fa-solid fa-house"></i>
          Головна</a></li>
          <li><a href="{if $_modx->context.key == 'web'}{21027 | url}{else}{21026 | url}{/if} "><i class="fa-solid fa-door-closed"></i>Склад</a></li>          
          <li><a href="{20164 | url}"><i class="fa-solid fa-earth-europe"></i>Бренди</a></li>
          <li><a href="{12663 | url}"><i class="fa-solid fa-address-card"></i>Контакти</a></li>    
          <li><a rel="nofollow" type="button" data-fancybox="" href="#callsbacks"><i class="fa-solid fa-phone"></i>Дзвінок</a></li>
        </ul>
      </div>
    </div>
{/if} 