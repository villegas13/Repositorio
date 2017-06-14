<?php 


require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );


global $wpdb;

$mi_tabla = 'wp_users';
  
$conectado = $_POST['chat_user'];
$id = $_POST['id'];

if (is_user_logged_in()){
 $cu = wp_get_current_user(); 
 $cu->ID;
} 


$query = "SELECT * FROM ".$mi_tabla." WHERE ID = ".$id;
$content = $wpdb->get_results( $query ) or die();


if ( count($content) > 0 ) {
     foreach ( $content as $row ) {

     	echo ucfirst($row->display_name);

     }
 }    	







?> 