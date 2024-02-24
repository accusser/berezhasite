<div class="msMiniCart{$total_count > 0 ? ' full' : ''}">
    <div class="empty">
        <a rel="nofollow" class="header-bar__item cart">
            <i class="fa-solid fa-shopping-cart fa-xl"></i>
            <span class="header-bar__total">0</span>
        </a>
    </div>
    <div class="not_empty">
        <a rel="nofollow" class="header-bar__item cart"
            href="{if $_modx->context.key == 'web'}{'9735' | url}{else}{'18168' | url}{/if}">
            <i class="fa-solid fa-shopping-cart fa-xl"></i>
            <span class="ms2_total_count header-bar__total"><strong
                    class="ms2_total_count">{$total_count}</strong></span>
        </a>
    </div>
</div>