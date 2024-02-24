<fieldset id="mse2_{$table ~ $delimeter ~ $filter}">
<div class="col-12">
              <div class="widget price-range mb-4">
                <h6 class="widget-title mb-2">{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</h6>
                <div class="widget-desc">
                    <div class="mse2_number_slider"></div>
                  <div class="row g-3">
                      {$rows}
                  </div>
                </div>
              </div>
            </div>
</fieldset>            