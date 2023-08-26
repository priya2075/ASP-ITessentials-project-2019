$(function(){$("#wrap").delay(750).css("opacity", 1).fadeIn(4000);});

 $(document).ready(function () {
            //Hide Back to top button
            $("#back-to-top").hide();
            $(window).scroll(function () {
                if ($(window).scrollTop() > 200) {
                    $('#back-to-top').fadeIn();
                } else {
                    $('#back-to-top').fadeOut();
                }
            });
            $('#back-to-top').click(function () {
                $('html').animate({
                    scrollTop: 0
                }, 1000);
            });
        });