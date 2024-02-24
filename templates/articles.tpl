{extends 'file:templates/index.tpl'}
{block 'content'}
<div class="article-section container py-5">
    <div class="row">
        <h1 class="col-12 section-header mb-4"><span>{$_modx->resource.pagetitle}</span></h1>
    </div>
    <div class="row pt-5">{$_modx->resource.content}</div>
</div>
<div id="pdopage" class="container">
    <div class="rows row">
        {'!pdoPage' | snippet : [
        'parents' => '',
        'limit' => '21',
        'tvPrefix' => '',
        'tpl' => '@FILE chunks/knowledgeTpl.tpl',
        'includeTVs' => 'newstextpreview,main_news_img',
        'includeContent' => '1',
        'processTVs' => '1',
        'sortby' => 'menuindex',
        'pageVarKey' => 'p',
        'tplPage' => '@FILE chunks/page/np_tplPage.tpl',
        'tplPageActive' => '@FILE chunks/page/np_tplPageActive.tpl',
        'tplPageFirst' => '@FILE chunks/page/np_tplPageFirst.tpl',
        'tplPageFirstEmpty' => '@FILE chunks/page/np_tplPageFirstEmpty.tpl',
        'tplPageLast' => '@FILE chunks/page/np_tplPageLast.tpl',
        'tplPageLastEmpty' => '@FILE chunks/page/np_tplPageLastEmpty.tpl',
        'tplPageWrapper' => '@FILE chunks/page/np_tplPageWrapper.tpl',
        ]}
    </div>
    <div class="row pb-4">
        <div class="col-lg-8 offset-lg-2 ">
            <div class="pagination">
                {$_modx->getPlaceholder('page.nav')}
            </div>
        </div>
    </div>
</div>
{/block}