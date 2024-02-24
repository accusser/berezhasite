<div class="row" id="mse2_mfilter">
    <div class="col-12 d-lg-none text-center mb-4 filter-btn">
        <a href="javascript:void(0);" class="read-more" id="mobfilter"><span class="ic-filter"></span> Фильтрация</a>
    </div>
    <div class="d-none d-lg-block col-lg-3" id="filterdock">
        <input type="hidden" name="localizatorkey" id="localizatorkey" value="[[++localizator_key]]">
        <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
            <div>
                {$filters}
            </div>
            {if $filters}
            <div class="d-flex justify-content-between">
                <button type="reset" class="btn btn-light hidden">{'mse2_reset' | lexicon}</button>
                <button type="submit" class="btn btn-primary hidden">{'mse2_submit' | lexicon}</button>
            </div>
            {/if}
        </form>
        <button type="button" id="closefilters">{$_modx->lexicon('localizator_lz_close')}</button>
    </div>
    <div class="col-lg-9 catalog">
        <div id="pdopage">
            <div class="row sort-row" style="font-weight: 700;padding-top: 20px; font-size: 1em;">
                <div class="col-md-8" id="mse2_sort">
                    <span class="sort__text">
                        {'mse2_sort' | lexicon}
                    </span>
                    <a href="#" data-sort="resource|publishedon"
                        data-dir="{if $sort == 'resource|publishedon:desc'}desc{/if}" data-default="desc" class="sort">
                        {'mse2_sort_publishedon' | lexicon} <span></span>
                    </a>
                    <a href="#" data-sort="ms|price" data-dir="{if $sort == 'ms|price:desc'}desc{/if}"
                        data-default="desc" class="sort">
                        {'mse2_sort_price' | lexicon} <span></span>
                    </a>
                </div>
                <div class="col-md-4 text-right">
                    {$_modx->lexicon('localizator_vsego')} {$_modx->lexicon('localizator_tovarov')} [[!+total]]
                </div>
            </div>
            <div id="mse2_selected_wrapper">
                <div id="mse2_selected">
                    {'mse2_selected' | lexicon}:<span></span>
                </div>
            </div>
            <div class="row rows align-items-stretch" id="mse2_results">
                {$results}
            </div>
            <div id="pages">
                <div class="mse2_pagination">
                    {'page.nav' | placeholder}
                </div>
            </div>
        </div>
    </div>
</div>