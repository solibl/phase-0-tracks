$("document").ready(function() {
    $('#picture').html('<img src="http://i.imgur.com/90Mmdcm.png">')
    $('#picture img').hover( function() {
        this.src = 'http://i.imgur.com/nTj3Fxx.gif'
    }, function() {
        this.src = 'http://i.imgur.com/90Mmdcm.png'
    })
    $('#picture img').mousedown( function() {
        this.src = 'http://i.imgur.com/Rfj0a80.png'
    })
    $('#picture img').mousedown(function() {
        $('hadouken').remove();
    })
    $('#picture img').mousedown(function() {
        $('#picture').append(
            '<img class="hadouken" src="http://i.imgur.com/oTyQRvX.gif">'
            );
    })
    $('#picture img').mousedown(function() {
        $('.hadouken').animate( {
            "margin-left": "200px"
        }, 800, 'swing', function() {
            this.remove();
        })
    })
    $('#picture img').mouseup(function() {
        this.src = 'http://i.imgur.com/90Mmdcm.png'
    })

});