const App = {
    SetBackground: () => {
        $('[setBackground]').each(function() {
            var background = $(this).attr('setBackground')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-size": "cover",
                "background-position": "center center"
            })
        })
        $('[setBackgroundRepeat]').each(function() {
            var background = $(this).attr('setBackgroundRepeat')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-repeat": "repeat"
            })
        })
    },
    EqualHeightElement: el => {
        let height = 0;
        let thisHeight = 0;
        $(el).each(function() {
            thisHeight = $(this).height();
            if (thisHeight > height) {
                height = thisHeight;
            }
        });
        $(el).height(height)
    },
    InitLazyLoad: () => {
        return new LazyLoad({
            elements_selector: ".lazy"
        });
    },
    ScrollTo: y => {
        $('html, body').animate({
            scrollTop: y
        }, 1000)
    },
    Init: () => {
        App.SetBackground()
        App.InitLazyLoad()
    }
}

function InitSlider() {

}
$(document).ready(function() {
    App.Init()
    togglenav()
    mappingInit()
    swiperInit()
    swiperHomeSlideInit()
    togglenavSearch()
    removenav()
    tabs()
    dropdownBtn()
    toggleSlidenav() 
    // countup()
    $('.count-up').countUp({
        'time': 4000,
        'delay': 10
    });
    // swiperNavSlideInit()
    
    
})
//menu-fixed
$(window).scroll(function(){
    var a = $(window).scrollTop();
    if(a > 0){
        $('header').addClass('active')
    }
    else{
        $('header').removeClass('active')
    }
    
})
//nav-mobile
function togglenav(){
    $('.button-toggle').on('click',function(){
        $(this).toggleClass('active')
        $('.nav-mobile').toggleClass('active')
        $('.back-drop').toggleClass('active')
    });
    $('.back-drop').on('click',function(){
        $(this).removeClass('active')
        $('.nav-mobile').removeClass('active')
        $('.button-toggle').removeClass('active')
    })
}
function removenav(){
    $(window).scroll(function(){
        var a = $(window).scrollTop()
        if(a > 0){
            $('.nav-mobile').removeClass('active')
            $('.button-toggle').removeClass('active')
            $('.back-drop').removeClass('active')
        }
    })
}
function togglenavSearch(){
    $('.box-title').on('click',function(){
        $(this).toggleClass('active')
        $('.select-wrap').toggleClass('active')
    });
    
}
function mappingInit(){
    var moveSearch = new MappingListener({
		selector: "header .right-wrapper",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .logo",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
    }).watch();

    var moveTop = new MappingListener({
		selector: "header .nav",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .header-top .container",
		desktopMethod: "appendTo",
		breakpoint: 1200,
    }).watch();

    var moveLanguage = new MappingListener({
		selector: "header .language",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .header-top .container .nav",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
    }).watch();
    
}

//swiper
function swiperInit(){
    let HomeBanner = new Swiper('.home-banner .swiper-container', {
        speed: 1000,
        slidesPerView: 1,
        loop: true,
        autoplay: true,
        navigation: {
            clickable: true,
            nextEl: '.home-banner .swiper-next',
            prevEl: '.home-banner .swiper-prev'
        },
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true
        },
	})

}
function swiperHomeSlideInit(){
    let HomeBanner = new Swiper('.home-slider .swiper-container', {
        speed: 1000,
        slidesPerView: 2,
        spaceBetween: 30,
        loop: true,
        navigation: {
            nextEl: '.home-slider .swiper-next',
            prevEl: '.home-slider .swiper-prev'
        },
        pagination: {
            el: '.home-slider .swiper-pagination',
            clickable: true
        },

        breakpoints: {
			768: {
				slidesPerView: 1
			}
		}
	})
    let productOther = new Swiper('.product-orther .swiper-container', {
        speed: 1000,
        slidesPerView: 4,
        spaceBetween: 30,
        loop: true,
        navigation: {
            nextEl: '.product-orther .swiper-next',
            prevEl: '.product-orther .swiper-prev'
        },
        pagination: {
            el: '.product-orther .swiper-pagination',
            clickable: true
        },

        breakpoints: {
			1024: {
				slidesPerView: 3
			},
			575: {
                slidesPerView: 2,
                spaceBetween: 10,
			}
		}
	})
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 25,
        slidesPerView: 5,
        direction: 'vertical',
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            1199: {
                slidesPerView: 5,
                direction: 'horizontal'
            }
        }
      });
      var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 10,
        navigation: {
          nextEl: '.swiper-down',
          prevEl: '.swiper-up',
        },
        thumbs: {
          swiper: galleryThumbs
        }
      });
}
// function swiperNavSlideInit(){
//     let HomeBanner = new Swiper('.home-nav .swiper-container', {
//         speed: 1000,
//         slidesPerView: 1,
//         spaceBetween: 30,
//         loop: true,
//         navigation: {
//             nextEl: '.home-nav .swiper-next',
//             prevEl: '.home-nav .swiper-prev'
//         },
//         pagination: {
//             el: '.home-nav .swiper-pagination',
//             clickable: true
//         },

//         breakpoints: {
// 			768: {
// 				slidesPerView: 1
// 			}
// 		}
// 	})

// }

//numberRun
function numberAutoRun() {
    $('.home-about .about-wrapper .count-up .box .box-up').each(function () {
        var $this = $(this);
        $({
            Counter: 0
        }).animate({
            Counter: $this.text()
        }, {
            duration: 4000,
            easing: 'swing',
            step: function () {
                $this.text(Math.ceil(this.Counter).toLocaleString('de-DE'));
                // var numberAfterRun = $(this).attr('data-number')
                // $this.text(numberAfterRun)
            },
        });
    });
}
//tab
function tabs(){
    $('.tabs').tabslet({
        active: 1,
    });

}
//drowdownButton
function dropdownBtn(){
    $('.desc .main-tabslet .tabslet-content .button .btn-viewall').on('click', function(){
        $('.desc .main-tabslet .tabslet-content .button').toggleClass('active')
    })
    $('.desc .main-tabslet .tabslet-content .button .btn-close').on('click', function(){
        $('.desc .main-tabslet .tabslet-content .button').toggleClass('active')
    })
}

//toggleslide
function toggleSlidenav(){
    var toggleFaq = $('.chi-tiet .catalog-list .nav-catalog .icon')
    toggleFaq.on('click', function(){
        toggleFaq.find('.nav-child').slideUp(500)
        if($(this).hasClass('active')){
            $(this).removeClass('active')
            $(this).find('.nav-child').slideUp(500)
        }
        else{
            toggleFaq.removeClass('active')
            $(this).addClass('active')
            $(this).find('.nav-child').slideDown(500)
        }
    })
}
$(function () {
    $(" .range-price     #slider-range").slider({
        range: true,
        min: 0,
        max: 20000,
        values: [0, 20000],
        slide: function (event, ui) {
        $( "#amount" ).val( ui.values[ 0 ] + " đến " + ui.values[ 1 ]);
    }
    });
    $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) +
      " đến " + $( "#slider-range" ).slider( "values", 1 ) );
  } )