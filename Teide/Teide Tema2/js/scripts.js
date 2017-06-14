// JavaScript Document




jQuery(document).ready(function ($) {

//	$('#menu1').scrollToFixed();
    $('#menu1').scrollToFixed({ marginTop: 0 });



	$('ul li a').click(function(){
        var link = $(this);
        var anchor  = link.attr('href');
       $('html, body').stop().animate({
            scrollTop: jQuery(anchor).offset().top
        }, 2000);
        return false;
    });
	
	

//	////clic en un enlace de la lista
//	$('ul li a').on('click',function(e){
//		
//		//prevenir en comportamiento predeterminado del enlace
//		e.preventDefault();
//		//obtenemos el id del elemento en el que debemos posicionarnos
//		var strAncla=$(this).attr('href');
//		
//		//utilizamos body y html, ya que dependiendo del navegador uno u otro no funciona
// 	 $('body,html').stop(true,true).animate({			
//			//realizamos la animacion hacia el ancla
//			scrollTop: $(strAncla).offset().top
//		},2000);
//	});

	
	////nos desplazamos entre todos los divs
//			$('ul li a').on('click',function(e){
//			e.preventDefault();
//		    enlace  = $(this).attr('href');
//			
//		    $('html, body').animate({
//		        scrollTop: $(enlace).offset().top
//		    }, 1000);
//			});

	
 });	