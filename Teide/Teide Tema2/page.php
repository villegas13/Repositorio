<?php get_header(); ?>
 
 
  <section id="main">
 

<?php

get_page($page_id);

$page_data = get_page($page_id);

//echo $page_data->ID;
// echo ” . $page_data->post_title . ”;
// echo apply_filters(‘the_content’, $page_data->post_content);




?>
<?php if ($page_data->ID == 12){ ?>
  
<div id="areaservicios">
<div id="areaserviciostxt">
<?php 
 //echo ” . $page_data->post_title . ”;
 echo apply_filters(‘the_content’, $page_data->post_content);
?>  
</div>
</div>
 
<?php }elseif ($page_data->ID == 14){ ?>
  
<div id="areanosotros">
<?php 
 echo ” . $page_data->post_title . ”;
 echo apply_filters(‘the_content’, $page_data->post_content);
?>  
</div>
 
<?php }elseif ($page_data->ID == 16){ ?>
  
<div id="areacontactos">
<?php 
 echo ” . $page_data->post_title . ”;
 echo apply_filters(‘the_content’, $page_data->post_content);
?>  
</div>
 
<?php } ?>
  
 

  </section> <!-- Fin de main -->
 
    <?php //  get_sidebar();?>
 
 
<?php get_footer(); ?>
