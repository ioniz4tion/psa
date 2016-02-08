$( document ).ready(function() {    
    //config variables, you can edit
    var ease = "Back.easeOut"; //ease type the dots use
    var animationDuration = 6000; //amount of time the animation will stay for in milliseconds
    var fadeDelay = 2500; //time between when dots start moving away and background fades
    var fadeDuration = 2;
    //important animation variabels, DONT TOUCH    
    var t1 = new TimelineMax();
    var time = new Array(61);
    
    for (i=0; i <= 60; i++) {
        time[i] = (Math.random() * 1.5) + 0.8;
    }
    
    function top(x) {
        if(Math.random() < 0.5) {
            return x;
        } else {
            return x * -1;
        }
    }
    
    function left(x) {
        if(Math.random() < 0.5) {
            return Math.random() * 400 * -1 + x;
        } else {
            return Math.random() * 600 + x;
        }
    }
    
    for (i=0; i <= 60; i++) {
        var test = ".st" + i;
        t1.from($(test), time[i], {top: top(-800),left: left(0), ease: ease, easeParams:[.5]}, 2);
    }
    
    t1.from($('#animation-text'), 1, {css:{opacity: 0}});
    var txt = $(".animation p span");
    t1.staggerFrom(txt, 2, {alpha: 0}, 0.02);

    t1.from($("#blue"), 1, {rotationX:"-360", color: "#fff",ease: ease}, "-=0.5");
    t1.from($("#green"),1, {rotationX:"-360", color: "#fff",ease: ease}, "-=0.5");

    t1.play();
    
    // setTimeout(function(){ 
    //     t1.reverse();
    //     setTimeout(function(){
    //         TweenMax.to($(".fade-away"), fadeDuration, {opacity: 0});
    //     },fadeDelay);
    // }, animationDuration);
    
});