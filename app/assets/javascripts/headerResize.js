$(document).ready(function() {

    var bool = false,
        $header = $('header'),
        $canvasHolder = $('#canvas-holder');

    var setHeaderHeight = function() {
        var heightSource = $(window).height() - 170;
        $header.css('height', heightSource);
        $canvasHolder.css('width', heightSource);
        console.log("hello");
    };

    $(window).resize(function() {
        setHeaderHeight();
    });

    setHeaderHeight();

});