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
    <h1 class="sf_h1 col-12 section-header mb-4">
      <span>{$_modx->getPlaceholder('sf.h1')?:$_modx->resource.pagetitle}</span>
    </h1>
  </div>
  <div class="row">
    <div id="pdopage" class="msfavorites-parent col-lg-9 catalog">
      <div class="row">
        [[!pdoPage:default=`
        <div><strong>Ваш список избранного пока пуст</strong></div>
        `?
        &parents=`0`
        &resources=`[[!msFavorites.objects?
        &list=`tovary`
        &type=`resource`
        &returnIds=`1`
        ]]`
        &element=`msProducts`
        &sortby=``
        &totalVar=`total`
        &tpl=`@FILE chunks/catalog/TovarTpl.tpl`
        &ajaxMode=`default`
        ]]

      </div>


      [[!+total:gt=`0`:then=`
      <button class="btn btn-default btn-sm msfavorites msfavorites-action" data-click data-data-list="tovary"
        data-data-type="resource" data-data-method="clear">
        Очистить список
      </button>
      `:else=``]]
    </div>



  </div>
</div>
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
  /* $.ajax( {
     url: "/connectors/connect.php",
     type: "POST",
     data: {
         type: "product",
         data: window.localStorage.getItem("viewed_products")
     } ,
     success: function(result) {
         if(result.length) {
             $('.seen-goods').html(result);
             $('.product-carousel').slick( {
     autoplay: true,
     infinite: true,
     slidesToShow: 4,
     slidesToScroll: 4,
     nextArrow:'<button class="carousel-arrow arrow-next" aria-label="Следующий" type="button"></button>',
     prevArrow:'<button class="carousel-arrow arrow-prev" aria-label="Предыдущий" type="button"></button>',
     responsive: [
       {
         breakpoint: 1200,
         settings: {
           slidesToShow: 3,
           slidesToScroll: 3
         }
       },
       {
         breakpoint: 992,
         settings: {
           slidesToShow: 2,
           slidesToScroll: 2
         }
       },
       {
         breakpoint: 576,
         settings: {                
           slidesToShow: 1,
           slidesToScroll: 1
         }
       }
     ]
   } );
     }
   }
 } );*/
</script>
{/block}