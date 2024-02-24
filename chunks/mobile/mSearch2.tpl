          <form action="{$pageId | url}" class="msearch2" method="get" id="mse2_form">
            <input class="form-control" name="{$queryVar}" value="{$mse2_query}" placeholder="
            {if $_modx->context.key == 'web'}Введите текст и нажмите ENTER{else}Введіть текст та натисніть ENTER{/if}
            ">
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
          </form>     
          