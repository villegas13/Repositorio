<!DOCTYPE html> 
<html <?php language_attributes(); ?>> 
<head> <meta charset= <?php bloginfo( 'charset' ); ?>>
<title><?php wp_title(); ?></title> 
<!-- Definir viewport para dispositivos web móviles --> 
<meta name="viewport" content="width=device-width, minimum-scale=1">
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />

<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<link rel="stylesheet" type="text/css" media="all" href="<?php echo get_stylesheet_directory_uri(); ?>/css/objhtml.css" />



<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/jquery-scrolltofixed.js" ></script> 




<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/gmaps.js"></script>
<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/stylesmaps.css" />


<script type="text/javascript">

		
	
 jQuery(document).ready(function ($) {	

//	$('#menu1').scrollToFixed(); //menu fijo
   $('header').scrollToFixed({ marginTop: 0 });
   
   
   
				
$(window).load(function(){ //efecto deslizante 
$('a[rel=itemsc]').click(function(){

    $('html, body').animate({
        scrollTop: $( $(this).attr('href') ).offset().top - 100
    }, 1900);
    return false;
  });	
    
  });



 // mapas google maps
 
    var map;
   
      map = new GMaps({
        el: '#map',
		scrollwheel: false,
		zoom: 18, 
        lat: 28.122492,		
        lng: -16.739369
      });
      
      map.addMarker({
        lat: 28.122492,
        lng: -16.739369,		
        title: 'Roka Creativa SL',		
        infoWindow: {			 
          content: 'Roka Creativa SL',		  
        }
      });
  
	  

	


 });
 
 
</script>


 <?php wp_head(); ?> 
 </head>
 <body> 
  <div class="wrapper" id="wrapper">
  <a id="inicio"></a>

 <header  > 
 
<div id="header">

 <div id="menu1" align="right"><?php wp_nav_menu( array('menu' => 'Main', 'container' => 'nav' )); ?></div>
 <a href="#inicio" rel="itemsc"><div id="logo"></div></a>	 
 
</div>

 
 
 </header>
 

