{extends 'file:templates/index.tpl'}
{block 'styles'}
<style>
    .windowImg .img-responsive {
        display: inline-block;
    }

    .windowImg {
        margin-bottom: 20px;
    }

    .windowPrice {
        width: 80%;
        margin: 10px auto;
        -webkit-box-shadow: 0 0 1px 1px rgba(236, 236, 236, 1);
        -moz-box-shadow: 0 0 1px 1px rgba(236, 236, 236, 1);
        box-shadow: 0 0 1px 1px rgba(236, 236, 236, 1);
        border-radius: 5px;
        background: #f9f9f9;
        text-align: center
    }

    .windowPrice th {
        height: 65px;
        color: #04826d;
        text-align: center;
    }

    .windowPrice th img {
        margin-right: 10px;
    }

    .windowPrice td {
        height: 125px;
        position: relative;
    }

    .windowPrice thead tr {
        border-top: none;
    }

    .windowPrice tr {
        border-top: 1px solid #f0eee9;
    }

    .windowWidth {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
    }

    .windowPrice td img {
        margin-top: -10px;
    }

    .windowHeight {
        position: absolute;
        left: 5px;
        bottom: 0;
        transform: rotate(270deg);
        height: 1px;
        line-height: 16px;
        transform-origin: 0 50%;
        display: inline-block;
        width: 125px;
    }

    .windPrice {
        font-size: 22px;
        font-weight: 700;
        line-height: 16px;
    }
</style>
{/block}
{block 'content'}
<article class="article-section container py-5 shk-item">
    <div class="row">
        <h1 class="col-12 section-header mb-4">{$_modx->resource.pagetitle}</h1>
    </div>
    <form action="[[~[[*id]]? &scheme=`abs`]]" method="post">
        <input type="hidden" name="shk-id" value="{$_modx->resource.id}" />
        <input type="hidden" name="shk-name" value="{$_modx->resource.pagetitle}" />
        <div class="row product-page">
            <div class="col-xl-5 col-md-5 product-page-image">
                <div class="row">
                    <div class="col-12 text-center">
                        {var $productimage = 'phpthumbof' | snippet : ['input' => $_modx->resource.product_image,
                        'options' => 'w=450&h=450&aoe=1']}
                        <img src="{$productimage}" alt="" id="tovar-img" class="shk-image">
                    </div>
                </div>
            </div>
            <div class="col-xl-7 col-md-7  product-page-info">
                <div class="row">
                    <p class="col-12 text-center">Цена на деревянное {$_modx->resource.pagetitle},<br> в зависимости от
                        размеров и материала:</p>
                </div>
                <table class="windowPrice">
                    <colgroup>
                        <col width="40%">
                        <col width="30%">
                        <col width="30%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>Габаритные размеры</th>
                            <th><img src="assets/img/pine-tree.png" alt="Сосна"> Сосна</th>
                            <th><img src="assets/img/oak-tree.png" alt="Дуб"> Дуб</th>
                        </tr>
                    </thead>
                    {'getImageList' | snippet : [
                    'tpl' => '@CODE: <tr>
                        <td>
                            <img src="[[+w_image]]" alt="Схема открывания [[*pagetitle]]">
                            <span class="windowWidth">[[+w_width]] mm</span>
                            <span class="windowHeight">[[+w_height]] mm</span>
                        </td>
                        <td><span class="windPrice">[[+w_pinePrice]]</span><br>грн.</td>
                        <td><span class="windPrice">[[+w_oakPrice]]</span><br>грн.</td>
                    </tr>',
                    'tvname' => 'windPrice',
                    ]}
                </table>
            </div>
        </div>
    </form>
</article>
{/block}
{block 'script'}
<script>
    $(document).ready(function () {
        $(document).on('click', '.color-switcher', function (e) {
            e.preventDefault();
            $('#tovar-img').attr('src', $(this).data('img'));
            $('.color-switcher').removeClass('active');
            $(this).addClass('active');
        });
    });
</script>
{/block}