{extends 'file:templates/mobile/index.tpl'}
     {block 'menu'}
    {/block}
{block 'content'}
          	  {'!mFilter2' | snippet : [
        		'paginator' => 'pdoPage@new',
        		'limit' => '21',
        		'parents' => '[[*parent]]',
        		'class' => 'msProduct',
        		'element' => 'msProducts',
        		'setMeta' => '1',
        		'resources' => ('!mSearch2' | snippet: ['returnIds'=>'1','limit'=>'0'] ?: 999999),
        		'tplOuter' => '@FILE chunks/mobile/CatalogOuterM.tpl',
        		'tpls' => '@FILE chunks/mobile/TovarMTpl.tpl',
        		'snippet' => 'msProducts',
        		'showUnpublished' => '0',
        		'sort' => 'published:DESC',
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
              'tplFilter.outer.default' => '@FILE chunks/mobile/myFilterOuterM.tpl',
              'tplFilter.row.default' => '@FILE chunks/mobile/myFilterCheckbox2M.tpl',
              'tplFilter.outer.ms|price' => '@FILE chunks/mobile/myFilterSliderM.tpl',
              'tplFilter.row.ms|price' => '@FILE chunks/mobile/myFilterNumberM.tpl',
        	  ]}
       [[-!mFilter2?
        &paginator=`pdoPage@catalog_filters`
		&limit=`20`
		&parents=`[[*id]]`
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
		&ajaxMode=`button`
		&filters=`
		    ms|price:number,
		    msoption|available:default,
		    msoption|color:default,
			msoption|brand:default,
			msoption|polotno_type:default,
			ms|stal,
			msoption|roz:default,
			msoption|filter_material:default,
			msoption|otdelka:default,
			
			msoption|glass:default,
			msoption|style:default,
			ms|made_in:default,
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
		&tplFilter.outer.default=`@FILE chunks/mobile/myFilterOuterM.tpl`
		&tplFilter.row.default=`@FILE chunks/mobile/myFilterCheckbox2M.tpl`
		&tplFilter.outer.ms|price=`@FILE chunks/mobile/myFilterSliderM.tpl`
		&tplFilter.row.ms|price=`@FILE chunks/mobile/myFilterNumberM.tpl`
	  ]] 

{/block}    