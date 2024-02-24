{extends 'file:templates/mobile/index.tpl'}
    {block 'content'}
    <div class="page-content-wrapper py-3">
      <div class="container">
        <div class="row gy-3">
            
[[pdoResources?
	&tpl=`@FILE chunks/mobile/BrandsMTpl.tpl`
	&limit=`100`
	&depth=`1`
	&sortby=`pagetitle` &sortdir=`ASC`
	&parents=`[[BabelTranslation? &resourceId=`12643` &cultureKey=`[[++cultureKey]]`]]`
	&includeTVs=`logomin,logowhite,image`
]]          

        </div>
      </div>
    </div>
    <div class="internet-connection-status" id="internetStatus"></div>
    {/block}