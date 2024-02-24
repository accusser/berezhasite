<div class="d-lg-flex justify-content-end shop-cart col-xl-2 text-center text-xl-left msMiniCart{$total_count > 0 ? ' full' : ''}">
    <div class="empty">

    <div class="minicart bg-white d-inline-block py-1 py-lg-0 mb-0">
        <span class="py-2 px-4 text-center text-lowercase text-nowrap font-weight-bold clr1"><span class="cartname">[[%localizator_shopcartname? &topic=`translate` &namespace=`babel`]]</span> (0)</span>
    </div>

</div>
<div class="not_empty">

    <div class="minicart bg-white d-inline-block py-1 py-lg-0 mb-0">
        <span class="py-2 px-4 text-center text-lowercase text-nowrap font-weight-bold clr1"><span class="cartname">[[%localizator_shopcartname? &topic=`translate` &namespace=`babel`]]</span> (<strong class="ms2_total_count">{$total_count}</strong>)</span>
        <div class="full">
            [[+inner]]
            <div class="total-minicart">[[%localizator_shopcartsummname? &topic=`translate` &namespace=`babel`]]: <strong class="ms2_total_cost">{$total_cost}</strong> грн.</div>
            <div class="cart-order proceed-cart-wrapper">
                <a href="[[~[[BabelTranslation? &resourceId=`9735` &cultureKey=`[[++cultureKey]]`]]]]" class="proceed-cart" id="shk_butOrder">[[%localizator_shopcartmakezakaz? &topic=`translate` &namespace=`babel`]]</a>
            </div>
            <div class="empty-cart-wrapper" hidden>
                <a href="[[~[[BabelTranslation? &resourceId=`27` &cultureKey=`[[++cultureKey]]`]]]]" class="empty-cart" id="shk_butEmptyCart">[[%localizator_shopcartcleancart? &topic=`translate` &namespace=`babel`]]</a>
            </div>
        </div>
    </div>

</div>
</div>