<div style="display: none; width: 500px;" id="callsbacks">
    {if $_modx->context.key == 'web'}
    <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">Перезвоните мне</p>
    <form class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormru" data-si-preset="onestepformrucall">
        <input type="hidden" name="id" value="{$_modx->resource.id}" />
            <div class="form-group">
                <input class="form-control" type="text" name="name" placeholder="Имя" />
                <p data-si-error="name"></p>
            </div>
            <div class="form-group">
                <input type="tel" class="form-control phoneinput" name="phone" placeholder="+38 (0__) ___-____" />
                <p data-si-error="phone"></p>
            </div>
            <div class="form-group _text-center _md-text-center height100">
                <button type="submit" class="btn btn-success btn-lg w-100">
                    Получить консультацию
                </button>
            </div>
    </form>

    {else}
    <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">Зателефонуйте мені</p>
    <form class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormuk" data-si-preset="onestepformukcall">
        <input type="hidden" name="id" value="{$_modx->resource.id}" />

            <div class="form-group">
                <input class="form-control" type="text" name="name" placeholder="Iм’я" />
                <p data-si-error="name"></p>
            </div>

            <div class="form-group">
                <input type="tel" class="form-control phoneinput" name="phone" placeholder="+38 (0__) ___-____" />
                <p data-si-error="phone"></p>
            </div>

            <div class="form-group _text-center _md-text-center height100">
                <button type="submit" class="btn btn-success btn-lg w-100">
                    Отримати консультацію
                </button>
            </div>

    </form>
    {/if}
</div>

{if $_modx->context.key == 'web'}
<div style="display: none; width: 500px;" id="zamer-call">
    <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">Вызов замерщика</p>
    <form id="zamer-form" method="post" class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormru" data-si-preset="onestepformruzam">
        <input type="hidden" name="id" value="{$_modx->resource.id}" />
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" />
            <p data-si-error="name"></p>
        </div>
        <div class="form-group">
            <label>Телефон</label>
            <input type="tel" name="phone" class="form-control phoneinput" />
            <p data-si-error="phone"></p>
        </div>
        <div class="form-group">
            <label>{$_modx->config.youradd}</label>
            <input type="text" name="address" class="form-control" />
        </div>
        <div class="form-group">
            <label>{$_modx->config.fcomm}</label>
            <textarea name="message" class="form-control" rows="3"></textarea>
            <small class="text-danger d-block error_message"></small>
        </div>

        <div class="gcell _pb-xs">
            <div class="form-group _text-center _md-text-center height100">
                <button type="submit" class="btn btn-success btn-lg w-100">
                    Вызвать замерщика
                </button>
            </div>
        </div>

        <div class="successMessage"></div>
    </form>
</div>
{else}
<div style="display: none; width: 500px;" id="zamer-calluk">
    <p class="fs-1 font-weight-bold text-uppercase clr3 h5 _md-text-center">Виклик замірника</p>
    <form method="post" class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormuk" data-si-preset="onestepformukorder">
        <input type="hidden" name="id" value="{$_modx->resource.id}" />
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" />
            <p data-si-error="name"></p>
        </div>
        <div class="form-group">
            <label>Телефон</label>
            <input type="tel" name="phone" class="form-control phoneinput" />
            <p data-si-error="phone"></p>
        </div>
        <div class="form-group">
            <label>{$_modx->config.youradd}</label>
            <input type="text" name="address" class="form-control" />
        </div>
        <div class="form-group">
            <label>{$_modx->config.fcomm}</label>
            <textarea name="message" class="form-control" rows="3"></textarea>
            <small class="text-danger d-block error_message"></small>
        </div>

        <div class="gcell _pb-xs">
            <div class="form-group _text-center _md-text-center height100">
                <button type="submit" class="btn btn-success btn-lg w-100">
                    Викликати замірника
                </button>
            </div>
        </div>

        <div class="successMessage"></div>
    </form>
</div>
{/if}

<div style="display: none; width: 500px;" id="oneclick">
    {if $_modx->context.key == 'web'}
    <form id="zakaz-form" method="post" class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormru" data-si-preset="onestepformruorder">
        <input type="hidden" name="delivery" value="1" />
        <input type="hidden" name="payment" value="1" />
        <input type="hidden" name="options[]" value="" />
        <input type="hidden" name="id" value="{$_modx->resource.id}" />
        <input type="hidden" name="properties" id="input-prop" />
        <input type="hidden" name="tovar" value="{$_modx->resource.pagetitle}" />
        <div class="row">
            <div class="col-12">
                <p class="font-weight-bold clr2">{$_modx->resource.pagetitle}</p>
                <p id="text-prop"></p>
            </div>
        </div>
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" />
            <p data-si-error="name"></p>
        </div>
        <div class="form-group emaildivs">
            <label>Ваш Email</label>
            <input type="email" name="email" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <label>Телефон</label>
            <input type="tel" name="phone" class="form-control phoneinput" value="[[+fi.phone]]" />
            <p data-si-error="phone"></p>
        </div>

        <input type="number" class="form-control" name="count" value="1" min="1" hidden />
        <div class="modal-footer justify-content-between">
            <input name="submit" type="submit" class="btn btn-success btn-lg w-100" value="{$_modx->config.fpurch}" />
        </div>
    </form>
    {else}
    <form id="zakaz-form" method="post" class="form" autocomplete="off" novalidate="novalidate" data-si-form="oneStepFormru" data-si-preset="onestepformukorder">
        <input type="hidden" name="delivery" value="1" />
        <input type="hidden" name="payment" value="1" />
        <input type="hidden" name="options[]" value="" />
        <input type="hidden" name="id" value="{$_modx->resource.id}" />
        <input type="hidden" name="properties" id="input-prop" />
        <input type="hidden" name="tovar" value="{$_modx->resource.pagetitle}" />
        <div class="row">
            <div class="col-12">
                <p class="font-weight-bold clr2">{$_modx->resource.pagetitle}</p>
                <p id="text-prop"></p>
            </div>
        </div>
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" />
            <p data-si-error="name"></p>
        </div>
        <div class="form-group emaildivs">
            <label>Ваш Email</label>
            <input type="email" name="email" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <label>Телефон</label>
            <input type="tel" name="phone" class="form-control phoneinput" value="[[+fi.phone]]" />
            <p data-si-error="phone"></p>
        </div>

        <input type="number" class="form-control" name="count" value="1" min="1" hidden />
        <div class="modal-footer justify-content-between">
            <input name="submit" type="submit" class="btn btn-success btn-lg w-100" value="{$_modx->config.fpurch}" />
        </div>
    </form>
    {/if}
</div>