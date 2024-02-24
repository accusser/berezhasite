<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--link rel="stylesheet" href="/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/slick-theme.css">  
    <link rel="stylesheet" type="text/css" href="/assets/css/jquery-fancybox-min.css"-->
<!--link rel="stylesheet" type="text/css" href="[[-!modxMinify?&group=`css`]]" /-->
<link rel="stylesheet" type="text/css" href="{'!modxMinify' | snippet : [ 'group' => 'css']}" />
    <!--link rel="stylesheet" href="/assets/fancy/fancystyle.css" referrerpolicy="no-referrer" /-->	 
<script src="/assets/js/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="/assets/js/jquery.inputmask.min.js" defer></script>
<script src="{'!modxMinify' | snippet : [ 'group' => 'js']}"></script>
   {if 'template' | resource == '5'} 
   {else}
<script src="/assets/slick/slick.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script>$(document).ready(function(){

        
        $('.select-berezha').select2({
            minimumResultsForSearch: -1
        });
});</script>
   {/if}


<script>
const exampleModal = new bootstrap.Modal(document.getElementById('oneclick'));

document.addEventListener('afl_complete:success', () => {
  exampleModal.hide();
});
</script>


   
<script>
// Passive event listeners
jQuery.event.special.touchstart = {
    setup: function( _, ns, handle ) {
        this.addEventListener("touchstart", handle, { passive: !ns.includes("noPreventDefault") });
    }
};
jQuery.event.special.touchmove = {
    setup: function( _, ns, handle ) {
        this.addEventListener("touchmove", handle, { passive: !ns.includes("noPreventDefault") });
    }
};
    $(document).ready(function(){
      
        
        $('.t-btn').on('click', function(e){
			e.preventDefault();
            $('#mainmenu').toggleClass('active');
            $(this).toggleClass('active');
        });
        
        $('.search').on('click', function(e){
            e.preventDefault();
            $('body').toggleClass('opened');
        });
        
        $('.open-search').on('click', function(e){
            e.preventDefault();
            $(window).scrollTop(0);
            $('body').toggleClass('opened');
        });
        
        $('.closepanel').on('click', function(e){
            e.preventDefault();
            $('body').removeClass('opened');
        });
        /*
        function LiveAjaxMegaSearch(as) {
            if (as['minlength'] > as['text'].length) {
                return false;
            }
        
            $.ajax({
                url: 'https://berezha.com.ua/ajaxmegasearch/',
                type: 'post',
                data: {
                    text: as['text'],
                    loc: as['loc']
                },
                success: function(data) {
                    if (data) {
                        $('#search-result .search-inner').removeClass('lookingfor');
                        $('#search-result .search-inner').html(data);
                        $('#search-result').show();
                    }
                }
            });
        
        }
        var as = [];
        as['text'] = $('input[name=search]').val();
        as['loc'] = '[[++localizator_key]]';
        as['minlength'] = 3;
        $('#search').submit(function() {
            $('#search-result .search-inner').empty();
            $('#search-result .search-inner').addClass('lookingfor');
            as['text'] = $('input[name=search]').val();
            LiveAjaxMegaSearch(as); 
            return false;
        });
        */

        $('.phoneinput').inputmask({
            "mask": "+38 (099) 999-9999"
        });
      
    });
</script>
<!--script>
    const body = document.body;
    const nav = document.querySelector(".menurow");
    const scrollUp = "scroll-up";
    const scrollDown = "scroll-down";
    //const navelement = document.getElementById("nav");
    //const btnbtn = document.getElementById("menubtn");
    let lastScroll = 0;
     
    window.addEventListener("scroll", () => {
      const currentScroll = window.pageYOffset;
      if (currentScroll <= 350) {
        body.classList.remove(scrollUp);
        return;
      }
     
      if (currentScroll > lastScroll && !body.classList.contains(scrollDown)) {
        // down
        body.classList.remove(scrollUp);
        body.classList.add(scrollDown);
        //navelement.classList.remove("active");
        //btnbtn.classList.remove("active");
      } else if (currentScroll < lastScroll && body.classList.contains(scrollDown)) {
        // up
        body.classList.remove(scrollDown);
        body.classList.add(scrollUp);
      }
      lastScroll = currentScroll;
    });
    
    function toggleMenu() {
      navelement.classList.toggle("active");
      btnbtn.classList.toggle("active");
    }
</script-->

<button class="closepanel button button--gradient js-import button--sm _import-pending _import-loaded _import-executed" type="button">
  {if $_modx->context.key == 'web'}
Закрыть
{else}
Закрити
{/if}  
</button>

<script src="/assets/components/shopkeeper3/web/js/lang/ru.js?v=3.2.7pl3"></script>
<script src="/assets/components/shopkeeper3/web/js/shopkeeper.js?v=3.2.7pl3"></script>
<script type="text/javascript" src="https://unpkg.com/jquery-snowfall@1.7.4/dist/snowfall.jquery.min.js" ></script>
<script src="/assets/button/script.js"></script>
<!--script src="/assets/modals.js"></script-->


<!-- JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2-neutral/dist/sweetalert2.all.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2-neutral/dist/sweetalert2.min.css">

<script src="/assets/js/berezha.js"></script>
<!--script>
    document.addEventListener('DOMContentLoaded', () => {
  FetchIt.Message = {
    success(message) {
      Swal.fire({
        icon: 'success',
        title: message,
        showConfirmButton: false,
        position: 'center',
        toast: true,
        timer: '3000',
        timerProgressBar: true,
         showCloseButton: true,
      });
    },
    error(message) {
      Swal.fire({
        icon: 'error',
        title: message,
        showConfirmButton: false,
        position: 'center',
        toast: true,
        timer: '3000',
        timerProgressBar: true,
        showCloseButton: true,
      });
    },
  }
});
</script-->

<!--script type="text/javascript" src="/assets/js/slick.js"></script-->
 <!--script type="text/javascript">
    $(document).on('ready', function() {
      $(".vertical-center-4").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 2
      });
      $(".vertical-center-3").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".vertical-center-2").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });
      $(".vertical-center").slick({
        dots: true,
        vertical: true,
        centerMode: true,
      });
      $(".vertical").slick({
        dots: true,
        vertical: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 5,
        slidesToScroll: 3
      });
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
      $(".lazy").slick({
        lazyLoad: 'ondemand', // ondemand progressive anticipated
        infinite: true
      });
    });
</script-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js" integrity="sha512-uURl+ZXMBrF4AwGaWmEetzrd+J5/8NRkWAvJx5sbPSSuOb0bZLqf+tOzniObO00BjHa/dD7gub9oCGMLPQHtQA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script src="/assets/fancy/fancyscript.js" referrerpolicy="no-referrer"></script>

  