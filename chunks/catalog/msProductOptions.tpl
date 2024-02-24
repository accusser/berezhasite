{foreach $options as $option}
            {if $option.value is array}
                <p class="ti-0 mb-0">{$option.caption}: <strong>{$option.value | join : ', '}</strong></p>
            {else}
            <p class="ti-0 mb-0">{$option.caption}: <strong>{$option.value}</strong></p>
            {/if}
{/foreach}