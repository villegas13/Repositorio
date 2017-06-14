<!DOCTYPE html> 
<html <?php language_attributes(); ?>> 
<head> <meta charset= <?php bloginfo( 'charset' ); ?>>
<title><?php wp_title(); ?></title> 
<!-- Definir viewport para dispositivos web móviles --> 
<meta name="viewport" content="width=device-width, minimum-scale=1">
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />

<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
 <?php wp_head(); ?> 
 </head>
 <body> 
 <div class="wrapper">
 <header> 
 <div id="menu">
 <?php wp_nav_menu( array('menu principal' => 'Main', 'container' => 'nav' )); ?> 
</div>
<div id="vid-cabecera">
	<video width="335" height="180" src="http://experiencetv.tv/wp-content/themes/mitema/videos/promook.mp4" poster="http://experiencetv.tv/wp-content/themes/mitema/images/cabecera.jpg" controls></video>
</div>
 </header>