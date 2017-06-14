<?php get_header(); ?>
 
  
  <section id="main">
 
<div id="sliderprin">
 <div id="sliderprinint">

<?php 
    echo do_shortcode("[metaslider id=4]"); 
?>
  </div>
  
  </div>
  
  <div id="msjprinder">
 <div id="msjprinderint">
 
  
 
 </div>
 <div id="msjprinderinttxt">
 <?php
// retrieve one post with an ID of 24
query_posts( 'cat=4' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
	the_title();
	the_content( 'Leer más »' );
endwhile;
?>
 
 </div>
 </div>
 
  
 <div id="areaservicios">
<div id="areaserviciostxt">

 <?php
// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
	the_title();
	the_content( 'Leer más »' );
endwhile;
?>

</div>
</div>


  
<div id="areanosotros">
<div id="areanosotrostxt">

  <?php
// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
	the_title();
	the_content( 'Leer más »' );
endwhile;
?>

</div>
</div>
 

   
<div id="areacontactos">
<div id="areacontactostxt">

 <?php
// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
	the_title();
	the_content( 'Leer más »' );
endwhile;
?>

</div>
</div>
 

 
 
 

  </section> <!-- Fin de main -->
 
    <?php //  get_sidebar();?>
 
 
  <?php get_footer(); ?>