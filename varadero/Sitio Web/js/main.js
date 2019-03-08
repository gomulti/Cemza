/*(function ($) {
    $(document).ready(function () {
        // hide .navbar first
        $(".div_container").hide();
        // fade in .navbar
        $(function () {
            
            $(window).scroll(function () {
                // set distance user needs to scroll before we start fadeIn
                if ($(this).scrollTop() > 500) {
                    $('.div_container').fadeIn();
                } else {
                    $('.div_container').fadeOut();
                }
            });
        });

    });
}(jQuery)); */
$(window).on('resize', function () {

    if ($(window).width() >= 0) {
        var page = $(this).scrollTop();
        if (page === 0 || page < 500) {
            $('.div_container').fadeOut();
        }
    }
});

$(window).on('load', function () {
    var page = $(this).scrollTop();
    if (page > 500) {
        $('.div_container').fadeIn();
    }
});

$(document).scroll(function () {
    if ($(window).width() >= 0) {
        var page = $(this).scrollTop();
        if (page > 500) {
            $('.div_container').fadeIn();
        } else {
            $('.div_container').fadeOut();
        }
    }
});

AOS.init();

$('body').scrollspy({
    target: ".navbar",
    offset: 50
});

$("a.js-scroll-trigger").on('click', function (event) {
    if (this.hash !== "") {
        if (!$(this).attr('href').match(/^#/)) return;
        event.preventDefault();
        var hash = this.hash;
        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 800, function () {
            //window.location.hash = hash;
        });

        if ($(window).width() <= 1024) {
            $('.navbar-collapse').collapse('hide');
            if ($('.navbar-brand').css('display') == 'none') {
                $('.navbar-brand').fadeIn('fast');
            }else{
                $('.navbar-brand').fadeOut('fast');
            }
        }
    }
});

$(document).ready(function () {
    $(".dropdown-lenguage").click(function (event) {
        event.stopPropagation();
        $(".dropdown-content").slideToggle("fast", function () {});
    });

    $(".dropdown-content").on("click", function (event) {
        event.stopPropagation();
    });

    var owl_projects = $('.carousel-project');
    owl_projects.owlCarousel({
        loop: true,
        margin: 60,
        autoplay: false,
        autoplayTimeout: 15000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1,
                nav: false
            },
            500: {
                items: 1,
                nav: false
            },
            520: {
                items: 2,
                nav: false
            },
            1024: {
                items: 2,
                nav: false
            },
            1025: {
                items: 3,
                nav: false
            }
        }
    });

    $('.next-slide-project').click(function () {
        owl_projects.trigger('next.owl.carousel');
    })

    $('.prev-slide-project').click(function () {
        owl_projects.trigger('prev.owl.carousel', [300]);
    })
});

$(document).on("click", function () {
    $(".dropdown-content").fadeOut();
});


$('.navbar-toggle').on('click', function () {
    if ($('.navbar-brand').css('display') == 'none') {
        $('.navbar-brand').fadeIn('fast');
    } else {
        $('.navbar-brand').fadeOut('fast');
    }
});