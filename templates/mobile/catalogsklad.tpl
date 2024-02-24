{extends 'file:templates/mobile/index.tpl'}
     {block 'menu'}
    {/block}
{block 'content'}

       	  {'!mFilter2' | snippet : [
        		'limit' => '20',
        		'parents' => '0',
        		'class' => 'msProduct',
        		'element' => 'msProducts',
        	    'where' => ['Data.sklad' => 1],
        		'setMeta' => '1',
        		'tplOuter' => '@FILE chunks/mobile/CatalogOuterM.tpl',
        		'tpls' => '@FILE chunks/mobile/TovarMTpl.tpl',
        		'snippet' => 'msProducts',
        		'includeTVs' => 'titletovar,brand',
        		'showUnpublished' => '0',
        		'sort' => 'publishedon:DESC',
        		'suggestions' => '1',
        		'suggestionsMaxFilters' => '10000',
        		'showlog' => '0',
        		'ajaxMode' => 'button',
        		'context' => $_modx->context.key,
    	        'cultureKey' => $_modx->config.cultureKey,
                'filters' => '
         		    ms|price:number,
         		    msoption|vid_vd:default,
         		    msoption|brand:default,
         		    msoption|tags:default,
         		    msoption|filter_material:default,
         		    msoption|color:default,
        			msoption|polotno_type:default,
        			ms|stal,
        			msoption|roz:default,
        			
        			msoption|otdelka:default,
        			
        			msoption|glass:default,
        			msoption|style:default,
        			
        			
                                                  '
                  'aliases' => '
         		    msoption|color==color,
        		    msoption|style==style,
        		    msoption|glass==steklo,
        		    msoption|brand==brand,
        		    msoption|filter_material==material,
        		    msoption|tags==collection,
        		    ms|steel==steel,
        		    msoption|available==available,
              '
              'tplFilter.outer.default' => '@FILE chunks/mobile/myFilterOuterM.tpl',
              'tplFilter.row.default' => '@FILE chunks/mobile/myFilterCheckbox2M.tpl',
              'tplFilter.outer.ms|price' => '@FILE chunks/mobile/myFilterSliderM.tpl',
              'tplFilter.row.ms|price' => '@FILE chunks/mobile/myFilterNumberM.tpl',           
        	  ]} 

{/block}    