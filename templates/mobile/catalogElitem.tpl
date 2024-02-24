{extends 'file:templates/mobile/index.tpl'}
     {block 'menu'}
    {/block}
{block 'content'}
      	  {'!mFilter2' | snippet : [
        		'paginator' => 'pdoPage@new',
        		'limit' => '21',
        		'parents' => $_modx->resource.parent,
        		'class' => 'msProduct',
        		'element' => 'msProducts',
        		'setMeta' => '1',
        		'where' => '{"Data.price:>=": 20000 ,"AND:Data.price:<=": 11122990}'
        		'tplOuter' => '@FILE chunks/mobile/CatalogOuterM.tpl',
        		'tpls' => '@FILE chunks/mobile/TovarMTpl.tpl',
        		'snippet' => 'msProducts',
        		'sort' => 'published:DESC',
        		'ajaxMode' => 'button',
                'filters' => '
         		    ms|price:number,
        			msoption|brand:default,
        			msoption|tags:default,
        			msoption|polotno_type:default,
        			ms|stal,
        			msoption|roz:default,
        			msoption|filter_material:default,
        			msoption|otdelka:default,
        			msoption|color:default,
        			msoption|glass:default,
        			msoption|style:default,
        			ms|made_in:default,
        			msoption|available:default,
              ',
              'aliases' => '
         		    msoption|filter_color==color,
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
       [[-!mFilter2?
        &paginator=`pdoPage@catalog_filters`
		&limit=`20`
		&parents=`[[*parent]]`
		&class=`msProduct`
		&element=`msProducts`
		&setMeta=`1`
		&tplOuter=`@FILE chunks/mobile/CatalogOuterM.tpl`
		&tpls=`@FILE chunks/mobile/TovarMTpl.tpl`		
		&snippet=`msProducts`
		&sort=`
			published:DESC
		`
		&loadModels=`easycomm`
&where=` { "class_key":"msProduct" } `
&leftJoin=` {
	"ecThread": {
		"class": "ecThread",
		"on": "msProduct.id = ecThread.resource"
	}
}`

&select=`{
	"msProduct": "*",
	"ecThread": "ecThread.rating_simple AS rating, ecThread.count AS reviews"
}`

		&filterOptions=` { "sort_link:": "#mse2_sort option" } `
		&filters=`
		    ms|price:number,
			msoption|brand:default,
			msoption|polotno_type:default,
			ms|stal,
			msoption|roz:default,
			msoption|filter_material:default,
			msoption|otdelka:default,
			msoption|color:default,
			msoption|glass:default,
			msoption|style:default,
			ms|made_in:default,
			msoption|available:default,
		
			`
			
		&aliases=`
		    msoption|filter_color==color,
		    msoption|style==style,
		    msoption|glass==steklo,
		    msoption|brand==brand,
		    msoption|filter_material==material,
		    msoption|tags==collection,
		    ms|steel==steel,
		    msoption|available==available,
		 
		`
			&ajaxMode=`button`

		&tplFilter.outer.default=`@FILE chunks/mobile/myFilterOuterM.tpl`
		&tplFilter.row.default=`@FILE chunks/mobile/myFilterCheckbox2M.tpl`

		&tplFilter.outer.ms|price=`@FILE chunks/mobile/myFilterSliderM.tpl`
		&tplFilter.row.ms|price=`@FILE chunks/mobile/myFilterNumberM.tpl`
		&suggestionsMaxResults=`30000`
		&showlog=`1`
	  ]] 

{/block}    