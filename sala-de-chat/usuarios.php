<?php 


require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );

global $wpdb;


$mi_tabla = 'zuaru_usuarios';


$query = "SELECT * FROM ".$mi_tabla." WHERE usuario = '".$_POST['usuario']."'";
$content = $wpdb->get_results( $query ) or die(); 


if ( count($content) > 0 ) {

    foreach ( $content as $row ) {        
echo "El usuario <strong style='color:#FF0000'>".$row->usuario."</strong> está en uso"; 
    }

}else {

$query="INSERT INTO zuaru_usuarios(nombre,email,usuario,password) values('".$_POST['nombre']."','".$_POST['email']."','".$_POST['usuario']."','".$_POST['pass']."') "; 
$content = $wpdb->get_results( $query ) or die();

echo "Registro procesado con éxito";

}




?> 

