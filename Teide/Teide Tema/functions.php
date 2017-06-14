<?php
// Registro del menú de WordPress
 
add_theme_support( 'nav-menus' );
 
if ( function_exists( 'register_nav_menus' ) ) {
    register_nav_menus(
        array(
          'main' => 'Main'
        )
    );
}



  //  Main Sidebar - permite habilitar para widget barra lateral
     if(function_exists('register_sidebar'))
          register_sidebar(array(
          'name' => 'main_sidebar',
           'before_widget' => '<hr>',
            'after_widget' => '',
          'before_title' => '<h3>',
          'after_title' => '</h3>',
     ));
 
 
 	//Habilitar thumbnails en loop post indexphp
	add_theme_support('post-thumbnails');
	set_post_thumbnail_size(150, 150, true);

	// Permitir comentarios encadenados
	function enable_threaded_comments(){
		if (is_singular() AND comments_open() AND (get_option('thread_comments') == 1)) {
		   wp_enqueue_script('comment-reply');
		}
	}
	add_action('get_header', 'enable_threaded_comments');


?>