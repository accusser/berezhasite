<div class="col-4">
              <div class="card catagory-card">
                <div class="card-body px-2">
                     <a href="{$link}">
{$_modx->runSnippet('!pthumb', [
'input' => $_pls['image'],
'options' => 'w=100&h=100q=60&zc=C&f=webp',
'toPlaceholder' => 'thumb'
])}
                    <img src="{$_modx->getPlaceholder('thumb')}" alt="{$pagetitle}" class="lazy"><span>{$menutitle}</span>
                    </a>
                </div>
              </div>
            </div>