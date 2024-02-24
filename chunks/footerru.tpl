<div class="callback-section">
    <div class="container container--callback">
        <div class="grid _justify-center _items-center">
            <div class="callback-section__content">
                <div class="grid _items-center">
                    <div class="gcell gcell--12 gcell--lg-4 gcell--lg-5">
                        <div
                            class="p-title p-title--norm p-title--medium p-title--xl _pb-sm _text-center _lg-text-left">
                            Остались вопросы?
                        </div>
                        <div class="p-text p-text--grey _pb-def _text-center _lg-text-left">
                            Оставьте свои контактные данные и мы перезвоним вам
                        </div>
                    </div>
                    <div class="gcell gcell--12 gcell--de-8 gcell--lg-7">
                        <form
                            class="form js-import grid grid--1 grid--md-3 grid--space-ms _import-pending _import-loaded _import-executed"
                            autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormru"
                            data-si-preset="onestepformru">
                            <input type="hidden" name="id" value="{$_modx->resource.id}" />
                            <div class="gcell _pb-xs">
                                <div class="form-group">
                                    <input class="form-group__input" type="text" name="name" placeholder="Имя" />
                                    <p data-si-error="name"></p>
                                </div>
                            </div>
                            <div class="gcell _pb-xs">
                                <div class="form-group">
                                    <input type="tel"
                                        class="form-group__input js-import _import-pending _import-loaded _import-executed has-error phoneinput"
                                        name="phone" placeholder="+38 (0__) ___-____" />
                                    <p data-si-error="phone"></p>
                                </div>
                            </div>
                            <div class="gcell _pb-xs">
                                <div class="form-group _text-center _md-text-left height100">
                                    <button type="submit" class="height100 button button--dark button--gradient">
                                        Получить консультацию
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="footer__top">
        <div class="container">
            <div
                class="grid _items-center _justify-center _lg-items-start _flex-column _ms-flex-row grid--ms-2 grid--def-auto _lg-flex-nowrap">
                <div class="footer__logo">
                    {if 'template' | resource == '1'}
                    <img src="assets/img/logot.svg?v=1" alt="{'site_name' | config}" class="img-fluid" title=""
                        width="228" height="40" loading="lazy" />
                    {else}
                    <a href="{'site_url' | config}" class="footer-logo">
                        <img src="assets/img/logot.svg?v=1" alt="{'site_name' | config}" class="img-fluid" title=""
                            width="200" loading="lazy" />
                    </a>
                    {/if}

                    <div class="h-helpers">
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a class="h-helpers__item phone phone--hot"
                                    href="https://berezha.ua/kontaktyi/#berezha-goloseevo"> <i
                                        class="fas fa-map-marker-alt fa-sm" style="color: #ee7c0a;"></i> пр-т
                                    Голосеевский 17 </a>
                            </div>
                        </div>
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a class="h-helpers__item phone phone--hot"
                                    href="https://berezha.ua/kontaktyi/#berezha-zlatoustivska"> <i
                                        class="fas fa-map-marker-alt fa-sm" style="color: #ee7c0a;"></i> ул.
                                    Златоустовская, 55 </a>
                            </div>
                        </div>
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a class="h-helpers__item phone phone--kyiv" href="tel:{'phoned' | config}"
                                    title="{'phoned' | config}"><i class="fas fa-phone-square fa-sm"></i> {'phoned' |
                                    config}</a>
                            </div>
                        </div>
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a rel="nofollow" target="_blank" class="h-helpers__item phone phone--life"
                                    href="viber://chat?number=%2B380502820125" title="{'vb' | config}"><i
                                        class="fab fa-viber fa-sm" style="color: #ae9ef4;"></i> Viber</a>
                            </div>
                        </div>
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a rel="nofollow" target="_blank" class="h-helpers__item phone phone--life"
                                    href="https://t.me/Volkova_Liliya" title="{'tg' | config}"><i
                                        class="fab fa-telegram fa-sm" style="color: #229ed9;"></i> Telegram</a>
                            </div>
                        </div>
                    </div>
                    <div class="h-helpers">
                        <div class="h-helpers__items">
                            <div class="_flex _flex-nowrap _items-center">
                                <a rel="nofollow" class="hdr-social hdr-fb" title="Facebook" target="_blank"
                                    href="{'fb' | config}"><span>Бережа Facebook</span></a>
                                <a rel="nofollow" class="hdr-social hdr-ig" title="Instagram" target="_blank"
                                    href="{'in' | config}"><span>Бережа Instagram</span></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="footer__content _def-show">
                    <nav class="f-menu">
                        <ul class="f-menu__list grid grid--xl-4 grid--lg-4 grid--def-4">
                            <li class="f-menu__item">
                                <div href="{'6972' | url}" class="f-menu__link">Навигация</div>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'7' | url}" class="f-menu__link">О компании</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6516' | url}" class="f-menu__link">Услуги</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'11' | url}" class="f-menu__link">Статьи</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'14' | url}" class="f-menu__link">Доставка</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'27' | url}" class="f-menu__link">Контакты</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'7429' | url}" class="f-menu__link">Окна</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6532' | url}" class="f-menu__link">Фурнитура</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'7458' | url}" class="f-menu__link">Светильники</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6524' | url}" class="f-menu__link">Мебель</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="f-menu__item">
                                <a href="{'19' | url}" class="f-menu__link">Входные двери</a>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'9602' | url}" class="f-menu__link">В квартиру</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'9603' | url}" class="f-menu__link">На улицу</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'12527' | url}" class="f-menu__link">Элитные двери</a>
                                    </li>
                                </ul>
                                <a href="{'6972' | url}" class="f-menu__link">Раздвижные</a>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'9602' | url}" class="f-menu__link">Шпонированные раздвижные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'9603' | url}" class="f-menu__link">Окрашенные раздвижные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'11166' | url}" class="f-menu__link">Цельностеклянные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'11447' | url}" class="f-menu__link">Грунтованные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="f-menu__item">
                                <a href="{'3' | url}" class="f-menu__link">Межкомнатные</a>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'6519' | url}" class="f-menu__link">Шпонированные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6521' | url}" class="f-menu__link">Окрашенные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6518' | url}" class="f-menu__link">Ламинированные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6520' | url}" class="f-menu__link">Из масива</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'10247' | url}" class="f-menu__link">Стеклянные</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'12526' | url}" class="f-menu__link">Элитные</a>
                                    </li>
                                </ul>
                                <a href="{'7308' | url}" class="f-menu__link">Скрытые</a>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'11138' | url}" class="f-menu__link">В отделке</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'11139' | url}" class="f-menu__link">Цельностеклянные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="f-menu__item">
                                <a href="{'12643' | url}" class="f-menu__link">Производители</a>
                                <ul class="f-menu__subitems">
                                    <li class="f-menu__subitem">
                                        <a href="{'20792' | url}" class="f-menu__link">Abwehr</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'841' | url}" class="f-menu__link">Папа Карло</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'23' | url}" class="f-menu__link">Страж</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'762' | url}" class="f-menu__link">Steelguard</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'1840' | url}" class="f-menu__link">Wakewood</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'4099' | url}" class="f-menu__link">Пан Ясень</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'6056' | url}" class="f-menu__link">Гранд</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'5544' | url}" class="f-menu__link">Korfad</a>
                                    </li>
                                    <li class="f-menu__subitem">
                                        <a href="{'5248' | url}" class="f-menu__link">Rodos</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="footer__right">
                    <div class="footer__item">
                        <div class="subscribe">
                            <div class="h-helpers__items">
                                <button
                                    class="button button--gradient js-import button--sm _import-pending _import-loaded _import-executed"
                                    title="Вызов замерщика" rel="nofollow" type="button" data-fancybox
                                    href="#zamer-call">
                                    Вызов замерщика
                                </button>
                            </div>
                            <div class="subscribe__title"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="container">
            <div class="grid _items-center _justify-center _def-justify-between _def-flex-nowrap">
                <p class="f-copyright">© 2010-{php}echo date('Y');{/php} ТМ "БЕРЕЖА" Все права защищены</p>
                <ul class="p-list f-links">
                    <li><a href="{'22558' | url}">Политика конфиденциальности</a></li>
                    <li><a href="">Карта сайта</a></li>
                </ul>
                <p class="f-develop">
                    <span class="f-develop__text">Разработано в </span>
                    <a class="f-develop__link" rel="nofollow" target="_blank" href="https://crope.pro">
                        Crope
                        <span class="svg"> </span>
                    </a>
                </p>
            </div>
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
                    Поиск товара
                </span>
            </p>
            <p class="col-12 text-center">
                по названию или по коду товара
            </p>
            <div class="col-12">
                {'!mSearchForm' | snippet : [
                'pageId' => '20241',
                'tplForm' => '@FILE chunks/mSearch2.form.tpl',
                'element' => 'msProducts',
                'class' => 'msProduct',
                'context' => '[[*context_key]]',
                'cultureKey' => '[[++cultureKey]]',
                'fields' =>
                'article:1,pagetitle:5,longtitle:3,content:1,description:1,filter_material:1,glass:1,tags:1,brand:1,style:1,product_wood:1,dopolnitelnoepole:1,stal:1,vid_vd:1,color:1'
                ]}

            </div>
        </div>

        <div class="pt-4">
            <div class="row">
                <p class="text-center"></p>
            </div>
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