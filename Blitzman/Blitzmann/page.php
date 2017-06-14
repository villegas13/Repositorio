
<body> 

<?php get_header(); 

get_page($page_id);
$page_data = get_page($page_id);

if($post->post_parent) :   //obtener pagina padre

	$urlparent = get_page_link($post->post_parent);
	$nombreparent = get_the_title($post->post_parent);
	
endif; 

?>

 
  <section id="main">
 	
    
 	<div class="tit-article"  align="center" >
    	<div class="contenido-ancho" >
        


        
        <?php
        
	if ($nombreparent == "Personajes") {	
		
    	echo '<span id="tit-1">'.$nombreparent.'</span>&nbsp;&nbsp;<span id="elemen">+</span>&nbsp;&nbsp;<span id="elemen-tit">'. $page_data->post_title .'</span>';
  
	}else if ($nombreparent == "Show Led") {	
		
    	echo '<span id="tit-1">'.$nombreparent.'</span>&nbsp;&nbsp;<span id="elemen">+</span>&nbsp;&nbsp;<span id="elemen-tit">'. $page_data->post_title .'</span>';
  
	}else {	
		
    	echo '<span id="tit-1">'.$page_data->post_title.'</span>';
  
	}
	
	
  
  
        ?>
        </div>
    </div>    
	<div align="center" id="personajes1" class="contenido-ancho"  >
    
    	<aside  >
        <?php
		
		if ($nombreparent == "Personajes") {
		
		 wp_nav_menu( array( 'theme_location' => 'main-2' ) ); 
		 
		}else if ($nombreparent == "Show Led") {
			
		wp_nav_menu( array( 'theme_location' => 'main-3' ) ); 	
			
		}
		 
		
		 ?>

		
  		</aside>
        <article>
        <?php
        	
			echo apply_filters('the_content', $page_data->post_content); 
    //         echo apply_filters(‘the_content’, $page_data->post_content);
            
        ?>    
            
        </article>
        
  	</div>

  </section> <!-- Fin de main -->
 
 
  <?php get_footer(); ?>  
  
  
