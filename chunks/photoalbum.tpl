<div class="row pb-5">
    <h2 class="col-12 section-header"><span>{$pagetitle}</span></h2>
    <div class="photo-carousel col-10 offset-1">
        {$_modx->runSnippet('PageBlocks', [ 'rid' => $id, 'tpl' => '@FILE chunks/imgInPhotoalbum.tpl', 'context' => $_modx->context.key, 'cultureKey' => $_modx->config.cultureKey, ])}
    </div>
    <div class="col-12 text-center pt-3">
        <a href="{$uri}" class="read-more">
            <span class="link-arrow">></span>
            {'more' | config}
        </a>
    </div>
</div>
