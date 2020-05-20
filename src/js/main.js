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
    swiperNavSlideInit()
    
    
})

$(window).scroll(function(){
    var a = $(window).scrollTop()
    var b = $('.home-about').offset().top
    //  console.log(a,b);
    if(a > b){
        $('.home-about .about-wrapper .count-up .box .box-up').each(function () {
            var $this = $(this);
            let num = $this.attr('data-num')
            $({
                Counter: 0
            }).animate({
                Counter: num
            }, {
                duration: 3000,
                easing: 'swing',
                step: function () {
                    // console.log($this);
                    $this.text(Math.ceil(this.Counter))
                    // $this.text(Math.ceil(this.Counter).toLocaleString('de-DE'));
                    // var numberAfterRun = $(this).attr('data-number')
                    // $this.text(numberAfterRun)
                },
            });
        });
        // return
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