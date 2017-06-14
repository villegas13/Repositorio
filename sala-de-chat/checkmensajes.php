<?php 


require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );


global $wpdb;

$mi_tabla = 'zuaru_mensajes';
  
$conectado = $_POST['chat_user'];


if (is_user_logged_in()){
 $cu = wp_get_current_user(); 
 $cu->ID;
} 

$query = "SELECT * FROM ".$mi_tabla." WHERE status = 'nl' and msj_des = ".$cu->ID." " ;
$content = $wpdb->get_results( $query ) or die(); 


if ( count($content) > 0 ) {
   
  echo count($content);

}else{

  echo 0;
  
}




?> 