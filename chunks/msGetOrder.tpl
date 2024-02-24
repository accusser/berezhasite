<div id="msCart">
    <div class="table-responsive" hidden>
        <table class="table table-striped">
            <tr class="ms-header">
                <th class="ms-title">{'ms2_cart_title' | lexicon}</th>
                <th class="ms-count">{'ms2_cart_count' | lexicon}</th>
                <th class="ms-weight">{'ms2_cart_weight' | lexicon}</th>
                <th class="ms-price">{'ms2_cart_cost' | lexicon}</th>
            </tr>
            {foreach $products as $product}
            {var $image}
            {if $product.thumb?}
            <img src="{$product.thumb}" alt="{$product.pagetitle}" title="{$product.pagetitle}" />
            {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                alt="{$product.pagetitle}" title="{$product.pagetitle}" />
            {/if}
            {/var}
            <tr>
                <td class="ms-title">
                    <div class="d-flex">
                        <div class="ms-image mw-100 pr-3">
                            {if $product.id?}
                            <a href="{$product.id | url}">{$image}</a>
                            {else}
                            {$image}
                            {/if}
                        </div>
                        <div class="title">
                            {if $product.id?}
                            <a href="{$product.id | url}">{$product.pagetitle}</a>
                            {else}
                            {$product.name}
                            {/if}
                            {if $product.options?}
                            <div class="small">
                                {$product.options | join : '; '}
                            </div>
                            {/if}
                        </div>
                    </div>
                </td>
                <td class="ms-count text-nowrap">{$product.count} {'ms2_frontend_count_unit' | lexicon}</td>
                <td class="ms-weight text-nowrap">{$product.weight} {'ms2_frontend_weight_unit' | lexicon}</td>
                <td class="ms-price text-nowrap">{$product.price} {'ms2_frontend_currency' | lexicon}</td>
            </tr>
            {/foreach}
            <tr class="ms-footer">
                <th class="total">{'ms2_cart_total' | lexicon}:</th>
                <th class="total_count text-nowrap">
                    <span class="ms2_total_count">{$total.cart_count}</span> {'ms2_frontend_count_unit' | lexicon}
                </th>
                <th class="total_weight text-nowrap">
                    <span class="ms2_total_weight">{$total.cart_weight}</span> {'ms2_frontend_weight_unit' | lexicon}
                </th>
                <th class="total_cost text-nowrap">
                    <span class="ms2_total_cost">{$total.cart_cost}</span> {'ms2_frontend_currency' | lexicon}
                </th>
            </tr>
        </table>
    </div>
    <h3 class="col-md-10 mx-auto col-8 text-center"><span>
            [[++cultureKey:is=`ru`:then=`Номер вашего заказа {$order.num}`:else=`Номер вашого замовлення {$order.num}`]]
        </span></h3>

    <h4 class="col-md-10 mx-auto col-8 text-center">
        [[++cultureKey:is=`ru`:then=`Общая сумма заказа`:else=`Загальна сума замовлення`]]:
        {if $total.delivery_cost}
        {$total.cart_cost} {'ms2_frontend_currency' | lexicon} + {$total.delivery_cost}
        {'ms2_frontend_currency' | lexicon} =
        {/if}
        <strong>{$total.cost}</strong> {'ms2_frontend_currency' | lexicon}
    </h4>
    <script src="https://apis.google.com/js/platform.js?onload=renderOptIn" async defer></script>

    <script>
        window.renderOptIn = function () {
            window.gapi.load('surveyoptin', function () {
                window.gapi.surveyoptin.render(
                    {
                        // REQUIRED FIELDS
                        "merchant_id": 725432083,
                        "order_id": "{$order.id}",
                        "email": "{$user.email}",
                        "delivery_country": "UA",
                        "estimated_delivery_date": "{'' | date : "Y- m - d"}",
        });
        });
  }
    </script>
    {if $payment_link?}
    <p>{'ms2_payment_link' | lexicon : ['link' => $payment_link]}</p>
    {/if}
    <div class="table-responsive" style="padding-bottom:200px">
    </div>
</div>