<div class="col-12 my-3">
    <div class="row">
        <a href="[[+uri]]" title="[[+pagetitle:replace=`"==`]]" class="d-block col-md-4">
            <picture>
                <source srcset="[[+tv.image:phpthumbon=`w=355&h=355&zc=1&f=webp`]]" type="image/webp">
                <source srcset="[[+tv.image:phpthumbon=`w=355&h=355&zc=1&f=jpg`]]" type="image/jpg">
                <img src="[[+tv.image:phpthumbon=`w=355&h=355&zc=1&f=jpg`]]" alt="[[+pagetitle:replace=`"==`]]" class="img-fluid">
            </picture>
        </a>
        <div class="col-md-8">
            <h3 class="brandchild"><a href="[[+uri]]" title="[[+pagetitle:replace=`"==`]]">[[+longtitle]]</a></h3>
            <p>[[+introtext]]</p>
            [[!pdoMenu?
            &parents=`[[+id]]`
            &level=`10`
            &templates=`5`
            &processTVs=`1`
            &showHidden=`1`
            &includeTVs=`image`
            &tvPrefix=``
            &tplOuter=`@INLINE [[+wrapper]]`
            &tpl=`@FILE chunks/catalog/brandgrandchild.tpl`
            &toPlaceholder=`grandchilds`
            ]]
            [[+grandchilds:notempty=`
            <p><strong>[[++cultureKey:is=`ru`:then=`Коллекции`:else=`Колекції`]]</strong></p>
            <ul class="list-unstyled row">
                [[+grandchilds]]
            </ul>
            `:default=``]]
        </div>
    </div>
</div>