<url>
    <loc>{$url}</loc>
    <lastmod>{$date}</lastmod>
    <changefreq>{$update}</changefreq>
    <priority>{$priority}</priority>
    {'babelLinks' | snippet : [
    'resourceId' => $id,
    'showCurrent' => 1,
    'tpl' => '@FILE chunks/sitemap/xhtml.tpl'
    ]}
</url>