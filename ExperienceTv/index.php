<?php
/**
 * @package WordPress
 * @subpackage HTML5_Boilerplate
 */

get_header(); ?>

<div id="main" role="main">
  <?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post(); ?>

      <article <?php post_class() ?> id="post-<?php the_ID(); ?>">
       
        <?php the_content(); ?>
       
      </article>

    <?php endwhile; ?>   

  <?php endif;  ?>
    
</div>

<?php get_footer(); ?>


