<?php get_header(); ?>

    <section id="main-single">
    
     <div id="tabpost" align="center">
  <div id="tabposttxt"  >
    
    <table id="tblsingle1" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td scope="col" id="leftsin">
     <div id="frmsin" align="center">
<div id="frmsintxt"   >

  
          <?php if(have_posts()) : ?><?php while(have_posts()) : the_post(); ?>
 
            <h2><?php the_title(); ?></h2>
             <?php /*?> <small> Publicado por <?php the_author_posts_link() ?>  el <?php the_time('j/m/Y') ?>. Categoría: <?php the_category(', '); ?> </small><br><?php */?>
 
         <div class="post">
 
             <?php the_content(); ?>
 
        </div>
 		<div class="comentarios">
		  <?php comments_template(); ?>
        </div>
 		
<?php endwhile; ?>
 
<?php endif; ?>
 
 </div>
  </div>
 
  
    
    </td>
    <td scope="col" id="rigthsin">
     <div id="sidebar">
      <?php  get_sidebar('1')?>    
      </div>
    </td>
  </tr>
</table>

<table id="tblsingle2" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td scope="col">
    <div id="frmsin" align="center">
<div id="frmsintxt"   >

  
          <?php if(have_posts()) : ?><?php while(have_posts()) : the_post(); ?>
 
            <h2><?php the_title(); ?></h2>
             <?php /*?> <small> Publicado por <?php the_author_posts_link() ?>  el <?php the_time('j/m/Y') ?>. Categoría: <?php the_category(', '); ?> </small><br><?php */?>
 
         <div class="post">
 
             <?php the_content(); ?>
 
        </div>
 		<div class="comentarios">
		  <?php comments_template(); ?>
        </div>
 		
<?php endwhile; ?>
 
<?php endif; ?>
 
 </div>
  </div>
    
    </td>
  </tr>
  <tr>
    <td><div id="sidebar">
      <?php  get_sidebar('2')?>    
      </div></td>
  </tr>
</table>



</div>
</div>
    
    
<?php get_footer(); ?>       
 
  </section> <!-- Fin de main -->

 
