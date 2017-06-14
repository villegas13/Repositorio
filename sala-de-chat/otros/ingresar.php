<?php 


require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );

global $wpdb;

$mi_tabla = 'wp_users';

//INSERTAMOS EL COMENTARIO 
$query="SELECT * FROM wp_users WHERE user_login = '".$_POST['usuario']."' AND user_pass = '".$_POST['pass']."'"; 
$content = $wpdb->get_results( $query ) or die();



if ( count($content) > 0 ) {
 foreach ( $content as $row ) {        
  $_SESSION['id_usuario']= $row->ID;
    }

  $_SESSION['usuario']= $_POST['usuario'];
   

header('Location: http://localhost/proyecto/index.php');
}else{
	echo "El usuario y/o contraseña son incorrectos"; 
}






?> 

