<header class="hdr">
  <div class="bg1 position-relative">
    <div class="container">
      <div class="row flex-column-reverse flex-xl-row">
        {if $_modx->context.key == 'web'}
        <div class="col-xl-12 d-lg-flex d-none flex-wrap justify-content-between">
          <a href="uslugi/" title="Услуги"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold first">Услуги</a>
          <a href="o-kompanii/" title="О компании"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold">О
            компании</a>
          <a href="polezno-znat/" title="Полезно знать"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold">Полезно
            знать</a>
          <a href="dostavka/" title="Доставка"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold active">Доставка
            и оплата</a>
          <a href="turn-and-exchange/" title="Возврат и обмен"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Возврат
            и обмен</a>
          <a href="reviews/" title="Отзывы про двери"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Отзывы</a>
          <a href="kontaktyi/" title="Контакты"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Контакты</a>
        </div>
        {else}
        <div class="col-xl-12 d-lg-flex d-none flex-wrap justify-content-between">
          <a href="poslugi/" title="Послуги"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold first">Послуги</a>
          <a href="pro-company/" title="Про компанію"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold">Про
            компанію</a>
          <a href="korisno-znati/" title="Корисно знати"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold">Корисно
            знати</a>
          <a href="dostavka/" title="Доставка"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold active">Доставка
            та оплата</a>
          <a href="turn-and-exchange/" title="Повернення та обмiн"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Повернення
            та обмiн</a>
          <a href="reviews/" title="Відгуки про двері"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Відгуки</a>
          <a href="kontakti/" title="Контакти"
            class="py-2 px-2 hdr-top-link text-center text-uppercase text-white text-nowrap font-weight-bold last">Контакти</a>
        </div>
        {/if}
      </div>
      <!-- MOBILE -->
      {if $_modx->context.key == 'web'}
      {include 'file:chunks/mainmenu-ru.tpl'}
      {else}
      {include 'file:chunks/mainmenu-uk.tpl'}
      {/if}
    </div>
  </div>
  <div class="container-fluid bg2 pt-3 pt-lg-0">
    <div class="container">
      <div class="row justify-content-between align-items-center py-2">
        <div class="col-lg-12 col-xl-3 text-center text-xl-left pb-2">
          {if 'template' | resource == '1'}
          <img src="assets/img/logot.svg?v=1" alt="{'site_name' | config}" class="img-fluid"
            title="{'site_name' | config}" width="228" height="40" loading="lazy">
          {else}
          <a href="{'site_url' | config}" title="Бережа">
            <img src="assets/img/logot.svg?v=1" alt="{'site_name' | config}" class="img-fluid"
              title="{'site_name' | config}" width="228" height="40" loading="lazy">
          </a>
          {/if}
        </div>
        <div class="col-lg-6 col-xl-5 py-3">
          <div class="d-flex justify-content-center">
            <div class="pr-3 text-right metrod">
              <p class="mb-0">
                {if $_modx->context.key == 'web'}
                пр-т Голосеевский 17
                {else}
                пр-т Голосіївський 17
                {/if}
              </p>
              <p class="mb-0">
                <span class="hdr-call-link ringoclass">
                  <a href="tel:{'phoned' | config | preg_replace : '/[^0-9+]/' : ''}">{'phoned' |
                    config}
                  </a>
                </span>
              </p>
            </div>
            <div class="pl-3">
              <p class="mb-0">
                {if $_modx->context.key == 'web'}
                ул. Златоустовская 55
                {else}
                вул. Златоустівська 55
                {/if}
              </p>
              <p class="mb-0">
                <span class="hdr-call-link ringoclass">
                  <a href="tel:{'phonel' | config | preg_replace : '/[^0-9+]/' : ''}">{'phonel' |
                    config}
                  </a>
                </span>
              </p>
            </div>
          </div>
        </div>

        <div class="col-lg-6 col-xl-2 d-flex justify-content-center px-0" id="bx_basketFKauiI">
          <div class="header-bar">
            <a class="header-bar__item pageHeader-cart__ico search " rel="nofollow" type="button"
              data-target="#search-panel" style="cursor: pointer;">
              <i class="fa-solid fa-search fa-xl"></i>
            </a>
            {'!msMiniCart' | snippet : [
            'tpl' => '@FILE chunks/minicart2.tpl',
            ]}
            <a class="header-bar__item" rel="nofollow" type="button" data-fancybox href="#callsbacks">
              <i class="fa-solid fa-phone-volume fa-bounce fa-xl" style="color: #007257;"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  {if $_modx->context.key == 'web'}
  {include 'file:chunks/nav-ru.tpl'}
  {else}
  {include 'file:chunks/nav-uk.tpl'}
  {/if}
  {if 'template' | resource == '1'}
  {else}
  <div class="container-fluid bg2 py-2 py-lg-0">
    <div class="container">
      <div class="row justify-content-between py-2">
        <div class="col-12 mb-3 mb-md-0">
          {'pdoCrumbs' | snippet: [
          'exclude' => '2,12642,12655,20163',
          'showHome' => '1',
          'tplWrapper' => '@INLINE <ul class="breadcrumbs list-unstyled my-auto px-2">{$output}</ul>',
          'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" class="clr3"><span>{$menutitle}</span></a></li>',
          'tplCurrent' => '@INLINE <li><span>{$pagetitle}</span></li>',
          ]}
        </div>
      </div>
    </div>
  </div>
  {/if}
</header>