<?php
    header("HTTP/1.1 404 Not Found");
    
    get_header();  
    
    ?>
      <section id="main"    >
    <div id="error404">
	    <div id="error404txt">
    <h2>Página no encontrada!</h2>
    <p>La pagina a la que has accedido no existe o se ha borrado.</p>
    
    
<?php
// código para realizar una búsqueda interna relacionando con lo que hay en la url
//		echo "-".substr($_SERVER['REQUEST_URI'],5)."-";
        $search_term = substr($_SERVER['REQUEST_URI'],5);
        $search_term = urldecode(stripslashes($search_term));
		
        //$find = array ("'.html'", "'.+/'", "'[-/_]'") ;
        //$replace = " " ;
        //$search_term = trim(preg_replace ( $find , $replace , $search_term ));
					
		$cadena = $search_term;
		$patrones = array();
		$patrones[0] = '/\//';
		$patrones[1] = '/-/';
		$sustituciones = array();
		$sustituciones[0] = ' ';
		$sustituciones[1] = ' ';		
		$search_term = preg_replace($patrones, $sustituciones, $cadena); 

		$search_term_q = preg_replace('/ /', '%20', $search_term);
        $search_url = 'http://www.http://roka.es/roka/?s=';
        $full_search_url = $search_url . $search_term_q;
		
	?>
    	
          
         
 <?php
// WP_Query arguments

$args = array (	
	'post_type' => 'post',
	'post_status' => 'publish',
	'cat' => '24',	
	's' => $search_term,
);	
// The Query
$my_query = new WP_Query( $args ); 
      
?>	      
<?php // $my_query = new WP_Query("s=" . $search_term_q); ?>
        <ol>
 <?php  if (($my_query->have_posts())) :  ?>
        <h2>Artículos sugeridos</h2>
        <p>Buscando por: <strong><?php echo $search_term; ?></strong></p> 
        
<?php  endif; ?>        
        
<?php while ($my_query->have_posts()) : $my_query->the_post(); ?>
            <li>
                <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                <p><?php the_excerpt(); ?></p>
                <p><a href="<?php the_permalink(); ?>">Seguir leyendo...</a></p>
            </li>
<?php endwhile; ?>
        </ol>
        <br />
        <p>Intenta realizar una búsqueda sobre algo que estés interesado.</p><br />

        <form  method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <div style="text-align:center">
                <p><input type="text" name="s" id="s" size="15" /></p>
                <p><input type="submit" name="submit" value="<?php _e('Search'); ?>" /></p>
            </div>
        </form>
        

        </div>
      </div>

<?php 
    get_footer(); 
?>

</section>