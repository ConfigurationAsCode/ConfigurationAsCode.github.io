$(function() {
//    $('#jmpress').jmpress();
    $('#jmpress').jmpress({
        viewPort: {
            height: 800,
            width: 1200,
            maxScale: 5,
            minScale: 1,
            zoomable: 5
        },
        start: '#title',
        hash: {
            use: false,
            update: false,
            bindChange: false
        },
        keyboard: {
            keys: { //http://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes
                84: ['select', '#title'], // 't'
                71: ['select', '#goals'],  // 'g'
                77: ['select', '#overview'],  // 'm'
                79: ['select', '#overview']   // 'o'
            }
        }
    });

/*
    $('#jmpress').jmpress({

        animation: {
            transformOrigin: 'center center', // Point on which to transform (unused)
            transitionDuration: '5s',         // Length of animation
            transitionDelay: '500ms',         // Delay before animating
            transitionTimingFunction: 'ease'  // Animation effect
        },
        transitionDuration: 5000 // Set this according to animation.transitionDuration
                                 // It is used for setting the timeout for the transition
    });
*/

});


