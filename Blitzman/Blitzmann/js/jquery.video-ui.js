/*
 * Bootstrap video player
 * A customizable HTML5 video player plugin for jQuery based on bootstrap UI
 * version: 1.0   
 * Author: zied.hosni.mail@gmail.com 
 * 2012 © html5-ninja.com
 * 2012-09-26
 */

(function( $ ){

    $.fn.videoUI = function( options ) {  

        var settings = $.extend( {
            'playMedia'  : true,
            'progressMedia' : true,
            'timerMedia': true,
            'volumeMedia':10,
            'fullscreenMedia':true,
            'autoHide':true,
            'autoPlay':false
        }, options);
        
        var video = document.getElementById(this.attr('id'));
        var controllerClass = this.attr('id');
        var duration = currentTime = timer = seekx = seekPos = buffered = timerBuffer=0;
        var widthController = this.width();
       
  
       // this.after('<div class="videoController '+controllerClass+'"></div>');
       // $('.'+controllerClass).width(widthController);
        
        video.addEventListener("loadedmetadata", function() {      
            duration = video.duration;
       
            var timerBuffer = setInterval(function(){
                  
                buffered = video.buffered.end(0)+video.buffered.start(0);
    
                if (video.currentTime==buffered){
                    clearInterval(timerBuffer);
                }
                else{
                    $('.'+controllerClass+' .progress .bufferBar').width( (buffered/duration*100 )+ '%');
                }
            },100);

        });

        
        
      
        
       
        


    };
})( jQuery );