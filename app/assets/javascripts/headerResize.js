$(document).ready(function() {

    var bool = false,
        $header = $('header'),
        $canvasHolder = $('#canvas-holder');

    var setHeaderHeight = function() {
        var heightSource = $(window).height() - 170;
        var heightSource2;
        $header.css('height', heightSource);

        if ($(window).width() >= 1200) {
            heightSource2 = $(window).height() - 170;
        } else {
            heightSource2 = $(window).height() - 281;
        }

        $canvasHolder.css('width', heightSource2);
    };

    $(window).resize(function() {
        setHeaderHeight();
    });

    setHeaderHeight();

});