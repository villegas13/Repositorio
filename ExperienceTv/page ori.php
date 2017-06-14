<?php get_header(); ?>

<?php


get_page($page_id);
$page_data = get_page($page_id);



echo apply_filters(‘the_content’, $page_data->post_content);

 


?>


<?php get_footer(); ?>
