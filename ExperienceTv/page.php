<?php
/**
 * @package WordPress
 * @subpackage HTML5_Boilerplate
 */

get_header(); ?>

<div id="main" role="main">
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
  <article class="post" id="post-<?php the_ID(); ?>">   
  
    <?php the_content(); ?>
    
  
  </article>
  <?php endwhile; endif; ?>
   

</div>


<?php get_footer(); ?>
