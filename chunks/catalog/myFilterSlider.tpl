<fieldset id="mse2_{$table ~ $delimeter ~ $filter}">
    <div class="filter-group pt-4 pb-3">
        <p class="fs-1 font-weight-bold text-uppercase clr3 h5  hideafter flt-hdr">{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</p>
        <div class="mse2_number_slider"></div>
        <div class="mse2_number_inputs row">
            {$rows}
        </div>
    </div>
</fieldset>