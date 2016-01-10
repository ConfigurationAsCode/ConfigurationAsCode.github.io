$(function() {
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
            use: true,
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

});


