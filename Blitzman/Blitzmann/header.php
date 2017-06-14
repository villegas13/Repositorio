<!DOCTYPE html> 
<html <?php language_attributes(); ?>> 
<head> <meta charset= <?php bloginfo( 'charset' ); ?>>
<title><?php wp_title(); ?></title> 
<!-- Definir viewport para dispositivos web móviles --> 
<meta name="viewport" content="width=device-width, minimum-scale=1">
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<script src="http://api.html5media.info/1.1.5/html5media.min.js"></script>
<?php wp_head(); ?> 
</head>

<header>
 
 <div id="contenedor">
  
 <div id="cabecera" align="center">
 <div class="contenido-ancho">
 
  <div id="logo">
	  <center>  
  			<img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" width="417" height="79" onClick="javascript:window.location='./'" style="cursor:pointer" />
	  </center>
  </div>  
  
  <div id="menu1">
 <?php wp_nav_menu( array('menu' => 'Main', 'container' => 'nav' )); ?>
 
 </div>
 
 </div>
  
 </div> 
 
 </header>
