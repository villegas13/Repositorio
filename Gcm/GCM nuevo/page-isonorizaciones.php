<?php 

/*
Template Name: Izonorizaciones plantilla
*/

get_header(); 

?>
 
   <section id="main-inicio">
 
 
 <?php
echo apply_filters('the_content', $post->post_content); 
?> 


 <div id="lateral-inf">
 	<div id="menu1">
    <?php
	wp_nav_menu( array('menu' => 'Primero' ));
	
	
	?>
    </div>  
 </div>
 
 
 </div>
</div>
  
  
</article>  
 
  </section> <!-- Fin de main -->
 
 
 
 
  <?php get_footer(); ?>