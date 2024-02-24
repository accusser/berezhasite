{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
    <div class="container">
        <div class="row pt-5">
            <div class="article-content col-12">
                <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
                    <span>{$_modx->resource.longtitle}</span></h1>
                <p class="ti-0">{$_modx->resource.introtext}</p>
            </div>
        </div>
    </div>
    <div class="request-section container-fluid px-0">
        <div class="row">
            <div class="col-md-4 d-none d-md-block"
                style="background: url(assets/img/dev/fon1.jpg) center no-repeat; background-size: cover;"></div>
            {if $_modx->context.key == 'web'}
            <form class="col-lg-4 col-md-5 col-sm-7 col-10 consult-form py-5 px-5 form" autocomplete="off"
                novalidate="novalidate" data-si-form="oneStepFormru" data-si-preset="onestepformru">
                <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">ОТПРАВИТЬ ЗАЯВКУ ДЛЯ РАСЧЕТА
                    СТОИМОСТИ</p>
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
                    <div class="form-group _text-center _md-text-center height100">
                        <button type="submit" class="height100 button button--dark button--gradient">
                            ОТПРАВИТЬ ЗАЯВКУ
                        </button>
                    </div>
                </div>
            </form>
            {else}
            <form class="col-lg-4 col-md-5 col-sm-7 col-10 consult-form py-5 px-5 form" autocomplete="off"
                novalidate="novalidate" data-si-form="oneStepFormuk" data-si-preset="onestepformuk">
                <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">НАДІСЛАТИ ЗАЯВКУ НА РОЗРАХУНОК
                    ВАРТОСТІ</p>
                <input type="hidden" name="id" value="{$_modx->resource.id}" />
                <div class="gcell _pb-xs">
                    <div class="form-group">
                        <input class="form-group__input" type="text" name="name" placeholder="Iм’я" />
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
                    <div class="form-group _text-center _md-text-center height100">
                        <button type="submit" class="height100 button button--dark button--gradient">
                            НАДІСЛАТИ ЗАЯВКУ
                        </button>
                    </div>
                </div>
            </form>
            {/if}
            <div class="col-lg-5 col-md-4 col-sm-5 col-2"
                style="background: url(assets/img/dev/fon2.jpg) center no-repeat; background-size: cover;"></div>
        </div>
    </div>
    <div class="container">
        {$_modx->resource.content}
    </div>
</section>
{/block}