<?php
/*Template Name: Terminos Legales */

get_header();
 
?>
 
 
<section id="main-terlegales" >

 <div id="tabterm" align="center">
  <div id="tabtermtxt"  >
     

 <table id="tblterminos1" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td scope="col" id="leftterm">
    <div id="frmterminos" align="center">
<div id="frmterminostxt"   >
<?php
 
 get_page($page_id);
 $page_data = get_page($page_id);
 echo apply_filters(‘the_content’, $page_data->post_content);


?>
</div>
</div> 

    </td>
    <td scope="col" id="lefttight">
    <div id="sidebar">
<?php

echo get_sidebar('1');

?>

</div>
    
    </td>
  </tr>
</table>


<table id="tblterminos2" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr  >
    <td scope="col" ><div id="frmterminos" align="center">
<div id="frmterminostxt"   >
<?php

 get_page($page_id);
 $page_data = get_page($page_id);
 echo apply_filters(‘the_content’, $page_data->post_content);


?>
</div>
</div> </td>
  </tr>
  <tr>
    <td   >
    <div id="sidebar">
<?php

echo get_sidebar('2');

?>

</div>
    </td>
  </tr>
</table>


</div>
</div>




 
</section> <!-- Fin de main -->

 
 
<?php get_footer(); ?>