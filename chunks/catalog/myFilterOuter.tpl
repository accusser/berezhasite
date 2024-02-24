{var $key = $table ~ $delimeter ~ $filter}
{if $filter == 'brand'}
{var $activeclass = 'active'}
{else}
{var $activeclass = ''}
{/if}
<fieldset id="mse2_{$key}">
    <div class="{$filter}">
        <div class="filter-group pt-4 pb-3">
            <p class="fs-1 font-weight-bold text-uppercase clr3 h5  flt-hdr {$activeclass}">{('mse2_filter_' ~ $table ~
                '_' ~ $filter) | lexicon}</p>
            <div class="checkbox-filter {$activeclass}">
                <div class="pt-3">
                    {$rows}
                </div>
            </div>
        </div>
    </div>
</fieldset>