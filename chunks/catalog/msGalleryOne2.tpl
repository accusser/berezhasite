{if $files?}
{foreach $files as $file}
<link itemprop="image" href="http://berezha.ua{$file['url']}" />
{/foreach}
{else}
<img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}"
    srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x" alt="" title="" />
{/if}