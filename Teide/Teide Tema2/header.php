<!DOCTYPE html> 
<html <?php language_attributes(); ?>> 
<head> <meta charset= <?php bloginfo( 'charset' ); ?>>
<title><?php wp_title(); ?></title> 
<!-- Definir viewport para dispositivos web móviles --> 
<meta name="viewport" content="width=device-width, minimum-scale=1">
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/normalize.css" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/jquery-scrolltofixed.js" ></script>

<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/scripts.js" ></script>
 <?php  wp_head(); ?> 
 </head>
 <body> 
  <a id="inicio"></a>
 
 <div class="wrapper" id="wrapper" >
 <header> 

 <div id="header-sup" >
 
 </div>
 <div id="menu1" >
 
 
      <?php wp_nav_menu( array('menu' => 'Main', 'container' => 'nav' )); ?> 
<div id="logo" ><a href="http://roka.es/testwp1/" ><img src="http://roka.es/testwp1/wp-content/themes/Teide%20Tema/images/teide-logo.png" ></a></div>

 </div> 


  

 
 </header>