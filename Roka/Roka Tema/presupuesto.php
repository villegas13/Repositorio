<?php
/*Template Name: Presupuesto */

get_header();
 
?>
 
 
<section id="main-presupuesto"   >
 
<div id="frmpresupuesto" align="center" >
<span>Complete el formulario y será contactado a la mayor brevedad por nuestro personal</span>
<div id="frmpresupuestotxt"     >


<?php

 echo do_shortcode("[contact-form-7 id=\"121\" title=\"Formulario Presupuesto\"]");


?>

</div>
</div> 
 
 
 
<?php get_footer(); ?>

</section> <!-- Fin de main -->