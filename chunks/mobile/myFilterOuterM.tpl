{var $key = $table ~ $delimeter ~ $filter}
<fieldset id="mse2_{$key}">
            <div class="col-12">
              <div class="widget catagory mb-4">
                <h6 class="widget-title mb-2">{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</h6>
                <div class="widget-desc">
                  {$rows}
                </div>
              </div>
            </div>
</fieldset>            