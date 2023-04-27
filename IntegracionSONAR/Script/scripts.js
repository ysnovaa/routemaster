$(document).ready(function () {
    $('.bxslider').bxSlider();

    $('a[href^="#"]').on('click', function (e) {
        e.preventDefault();

        var target = this.hash,
	    $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 900, 'swing', function () {
            window.location.hash = target;
        });
    });

    $(".vinculo1").mouseover(function () {
        $(this).fadeTo("fast", 0.6, function () {
            // Animation complete.
        });
    });

    $(".vinculo1").mouseout(function () {
        $(this).fadeTo("fast", 1, function () {
            // Animation complete.
        });
    });

    $(".botonContactenos").mouseover(function () {
        $(this).fadeTo("fast", 0.6, function () {
            // Animation complete.
        });
    });

    $(".botonContactenos").mouseout(function () {
        $(this).fadeTo("fast", 1, function () {
            // Animation complete.
        });
    });

    $(".botonIngresar").mouseover(function () {
        $(this).fadeTo("fast", 0.6, function () {
            // Animation complete.
        });
    });

    $(".botonIngresar").mouseout(function () {
        $(this).fadeTo("fast", 1, function () {
            // Animation complete.
        });
    });

});