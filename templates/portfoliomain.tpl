{extends 'file:templates/index.tpl'}
{block 'content'}
<section class="article-section container-fluid">
  <div class="container">
    <div class="row pt-5">
      <div class="article-content col-12">
        <h1 class="col-md-10 offset-md-1 col-8 offset-2 section-header text-center">
          <span>{$_modx->resource.pagetitle}</span></h1>
        <div id="pdopage" class="container">
          <div class="rows row">
            {'!pdoPage' | snippet : [
            'parents' => '',
            'limit' => '210',
            'tvPrefix' => '',
            'tpl' => '@FILE chunks/portfolio.tpl',
            'includeTVs' => 'image,main_news_img',
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
        {$_modx->resource.content}
      </div>
    </div>
  </div>
</section>
{/block}