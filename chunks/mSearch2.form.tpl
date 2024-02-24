<form action="{$pageId | url}" class="msearch2" method="get" id="mse2_form">
    <input type="text" name="{$queryVar}" value="{$mse2_query}" placeholder="">
    <input type="submit" name="submit" value="{if $_modx->context.key == 'web'}Поиск{else}Пошук{/if}">
</form>