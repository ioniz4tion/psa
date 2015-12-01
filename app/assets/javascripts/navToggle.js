$(document).ready(function() {

    var $nav = $('nav');

    var toggleNavColor = function() {
        $nav.toggleClass('dark');
    };

    $('#navToggle').click(function() {
        toggleNavColor();
    });

});