{var $key = $table ~ $delimeter ~ $filter}
                    <div class="col-6">
                      <div class="form-floating">
                        <input class="form-control" type="text" name="{$filter_key}" id="mse2_{$key}_{$idx}" value="{$value}"
               data-current-value="{$current_value}">
                        <label for="mse2_{$key}_{$idx}">{$title}</label>
                      </div>
                    </div>