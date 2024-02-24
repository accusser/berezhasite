{extends 'file:templates/index.tpl'}
{block 'styles'}
<style>
  .mse2_pagination .col-md-8 {
    overflow: auto;
  }

  ._orientationRight_75db .button_5724 {
    margin-right: .5rem !important;
  }

  .button_5724 {
    box-shadow: none !important;
    margin-bottom: .5rem !important;
    width: 54px !important;
    height: 54px !important;
  }

  .checkbox-filter {
    height: auto;
    max-height: 0;
    overflow: hidden;
    transition: all .2s ease;
  }

  .checkbox-filter.active {
    max-height: 1500px;
    transition: all .6s ease;
  }

  .product_collection .disabled {
    display: none;
  }

  .flt-hdr {
    position: relative;
    cursor: pointer;
  }

  .flt-hdr:before,
  .flt-hdr:after {
    content: '';
    display: inline-block;
    width: 12px;
    height: 1px;
    position: absolute;
    top: 6px;
    right: 4px;
    background: #000;
    pointer-events: none;
  }

  .flt-hdr:before {
    transform: rotate(45deg)translateY(6px)translateX(-2px);
  }

  .flt-hdr:after {
    transform: rotate(-45deg)translateY(4px);
  }

  .flt-hdr.active:before {
    transform: rotate(-45deg)translateY(-2px)translateX(-8px);
  }

  .flt-hdr.active:after {
    transform: rotate(45deg)translateY(2px)translateX(4px);
  }

  .reset-link {
    border: 1px solid #d7b98e;
    background: none;
    color: #d7b98e;
    text-decoration: none;
    cursor: pointer;
    outline: 0;
    outline-color: transparent !important;
    padding: .3rem .5rem;
    text-transform: uppercase;
    transition: all .3s ease;
  }

  .reset-link:hover {
    text-decoration: none;
    background: #d7b98e;
    color: #000;
  }

  .cmni-wrapper,
  .w-90 {
    width: 90%;
    margin: 0 auto;
  }

  .catalogmenu span {
    width: 100%;
  }

  .catalogmenunavitem a,
  .catalogmenunavitem>span {
    display: block;
    width: 100%;
    border-bottom: 1px solid #d7b98e;
    text-decoration: none;
    padding: .75rem 0;
    font-weight: 700;
    font-size: .9rem;
    text-transform: uppercase;
    transition: color .2s ease;
  }

  .catalogmenunavitem.last>* {
    border-bottom: none;
  }

  .catalogmenunavitem a {
    color: #000;
  }

  .catalogmenunavitem>span {
    color: #b9b9b9;
  }

  .catalogmenunavitem a:hover {
    text-decoration: none;
    color: #007257;
  }

  .catalogmenunavitem {
    margin-bottom: 1rem;
  }

  .catalogmenunavitem picture {
    margin-right: .5rem;
  }

  .promobadge {
    position: absolute;
    top: 1rem;
    right: 1.5rem;
    z-index: 3;
  }

  .sf_h1:after,
  .sf_h1:before,
  h1 .ru:after,
  h1 .ru:before,
  h1 .uk:after,
  h1 .uk:before {
    display: none !important;

  }

  .hideafter.flt-hdr:before,
  .hideafter.flt-hdr:after {
    display: none;
  }

  .checkbox-filter label {
    line-height: 24px;
  }
</style>
{/block}
{block 'content'}
<div class="article-section container py-5">
  <div class="row">
    <h1 class="col-12 section-header mb-4"><span>{$_modx->resource.pagetitle}</span></h1>
    {'!mFilter2' | snippet : [
    'paginator' => 'pdoPage@new',
    'limit' => '21',
    'parents' => '0',
    'class' => 'msProduct',
    'element' => 'msProducts',
    'optionFilters' => '{"brand":"' ~$_modx->resource.pagetitle~ '"}',
    'setMeta' => '1',
    'tplOuter' => '@FILE chunks/catalog/catalogproducts.tpl',
    'tpls' => '@FILE chunks/catalog/TovarTpl.tpl',
    'snippet' => 'msProducts',
    'includeTVs' => 'titletovar,brand',
    'showUnpublished' => '0',
    'sort' => 'publishedon:DESC',
    'suggestions' => '1',
    'suggestionsMaxFilters' => '10000',
    'showlog' => '0',
    'context' => $_modx->context.key,
    'cultureKey' => $_modx->config.cultureKey,
    'filters' => '
    ms|price:number,
    msoption|filter_material:default,
    msoption|color:default,
    msoption|tags:default,
    msoption|available:default,
    msoption|polotno_type:default,
    ms|stal,
    msoption|roz:default,
    msoption|otdelka:default,
    msoption|glass:default,
    msoption|style:default,
    ms|made_in:default,

    ',
    'aliases' => '
    msoption|color==color,
    msoption|style==style,
    msoption|glass==steklo,
    msoption|brand==brand,
    msoption|filter_material==material,
    msoption|tags==collection,
    ms|steel==steel,
    msoption|available==available,
    ',
    'tplFilter.outer.default' => '@FILE chunks/catalog/myFilterOuter.tpl',
    'tplFilter.row.default' => '@FILE chunks/catalog/myFilterCheckbox2.tpl',
    'tplFilter.outer.ms|price' => '@FILE chunks/catalog/myFilterSlider.tpl',
    'tplFilter.row.ms|price' => '@FILE chunks/catalog/myFilterNumber.tpl',
    ]}

  </div>
  <div class="row text-center py-4 article-section container-fluid py-4">
  </div>
  {$_modx->runSnippet('PageBlocks', [
  'context' => $_modx->context.key,
  'cultureKey' => $_modx->config.cultureKey,
  ])}
</div>
{/block}
{block 'script'}
<script>
  $(document).ready(function () {

    $(window).scroll(function () {
      if ($(window).width() <= 991) {
        if ($(window).scrollTop() >= $('#pdopage').offset().top + 50) {
          $('.filter-btn .read-more').addClass('fixed');
        } else {
          $('.filter-btn .read-more').removeClass('fixed');
        }
      }
    });
    $('#mobfilter').on('click', function (e) {
      e.preventDefault();
      $('#filterdock').addClass('active');
    });

    $('#closefilters').on('click', function (e) {
      e.preventDefault();
      $('#filterdock').removeClass('active');
    });

    $('.flt-hdr').on('click', function () {
      $(this).toggleClass('active');
      $(this).next().toggleClass('active');
    });
    function checkBoxCheck(e) {
      if ($('.brand input:checkbox').is(':checked')) {
        $(".product_collection").addClass('active');
      } else {
        $(".product_collection").removeClass('active');
      }
    }
    checkBoxCheck();
    $(".brand input:checkbox").on('change', function () {
      checkBoxCheck();
    });

    var aurl = window.location.href;
    function checkActiveSort() {
      aurl = window.location.href;
      $(".sortlink").each(function () {
        $(this).removeClass('active');
        if (aurl.indexOf($(this).data('param')) > -1) {
          $(this).addClass('active');
        }
      });
    }
    function checkActiveLimit() {
      aurl = window.location.href;
      $(".limitlink").each(function () {
        $(this).removeClass('active');
        if (aurl.indexOf($(this).data('param')) > -1) {
          $(this).addClass('active');
        }
      });
    }
    checkActiveSort();
    checkActiveLimit();

    function removeURLParameter(url, parameter) {
      var urlparts = url.split('?');
      if (urlparts.length >= 2) {
        var prefix = encodeURIComponent(parameter) + '=';
        var pars = urlparts[1].split(/[&;]/g);
        for (var i = pars.length; i-- > 0;) {
          if (pars[i].lastIndexOf(prefix, 0) !== -1) {
            pars.splice(i, 1);
          }
        }

        aurl = urlparts[0] + '?' + pars.join('&');
      }
    }
    $(".sortlink").on('click', function (e) {
      e.preventDefault();
      tmFilters.setFormValue('sortdir', $(this).data('sortdir'));
      tmFilters.setFormValue('sortby', $(this).data('sortby'));
      tmFilters.switchPage(1, false);
      tmFilters.sorted = true;
      tmFilters.pushState();
      checkActiveSort();
      return false;
    });
    $(".limitlink").on('click', function (e) {
      e.preventDefault();
      tmFilters.setFormValue('limit', $(this).data('param'));
      tmFilters.switchPage(1, false);
      tmFilters.sorted = true;
      tmFilters.pushState();
      checkActiveLimit();
      return false;
    });
  });
</script>
{/block}