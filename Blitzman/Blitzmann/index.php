
 
<body> 

<?php 

/*
Template Name: Inicio plantilla
*/

get_header(); 




?>
 
  <section id="main-p">
 	
    
 	<div class="tit-article"  align="center" >
    	<div class="contenido-ancho" >
    	<span id="tit-1">Show Robost Led</span>&nbsp;<span id="tit-2">Es Entertaiment</span>
        </div>
    </div> 
   
   <?php

    
echo apply_filters('the_content', $post->post_content); 




?>


	</section> <!-- Fin de main -->

    

  <?php get_footer(); ?>  
 
  
 
