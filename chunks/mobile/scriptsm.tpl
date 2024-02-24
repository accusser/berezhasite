    <link rel="stylesheet" type="text/css" href="{'!modxMinify' | snippet : [ 'group' => 'cssmobile']}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="{$_modx->config.site_url}assets/mobile/js/bootstrap.bundle.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/waypoints.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.easing.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/owl.carousel.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.magnific-popup.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.counterup.min.js"></script>
    <!--script src="{$_modx->config.site_url}assets/mobile/js/jquery.countdown.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.passwordstrength.js"></script-->
    <script src="{$_modx->config.site_url}assets/mobile/js/jquery.nice-select.min.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/theme-switching.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/no-internet.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/active.js"></script>
    <script src="{$_modx->config.site_url}assets/mobile/js/pwa.js"></script>
    <link rel="stylesheet" type="text/css" href="/assets/css/jquery-fancybox-min.css">
    <link rel="stylesheet" href="/assets/fancy/fancystyle.css" referrerpolicy="no-referrer" />	 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js" integrity="sha512-uURl+ZXMBrF4AwGaWmEetzrd+J5/8NRkWAvJx5sbPSSuOb0bZLqf+tOzniObO00BjHa/dD7gub9oCGMLPQHtQA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="/assets/fancy/fancyscript.js" referrerpolicy="no-referrer"></script>
    <script src="https://malsup.github.io/jquery.form.js"></script>
    <script>
 $(document).ready(function() {
                               
                    $(document).on('change', '#mse2_sort', function() {
                        var selected = $(this).find('option:selected');
                        var sort = selected.data('sort');
                        sort += mse2Config.method_delimeter + selected.val();
                        mse2Config.sort =  sort;
                        mSearch2.submit();
                    });

   });
    </script>
    

