<?php


	session_start();
	
	$host="localhost";
	$user="root";
	$password="";
	$database="bdproyecto";
	
	
	
	
	$me = $_SESSION['JD_CURRUNT_USER'];

	
	
	require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );
    
    


    global $wpdb;



    $mi_tabla = 'zuaru_mensajes';
    

	if(isset($_POST['send']))
	{		
		$to     = $_POST['to'];
		$msg    = mysql_real_escape_string($_POST['msg']);		
		$chat_id = 2;
 		$msj_rem = $me;
	    $msj_des = $to;
	    $date   = date("Y-m-d H:i:s");
		$status = "nl";
		$user = $_POST['user'];
		$para = 0;

	  $query="INSERT INTO zuaru_mensajes(chat_id,msj_texto,msj_user,para,msj_rem,msj_des,time,status) values('".$chat_id."', '".$msg."','".$user."','".$para."','".$msj_rem."','".$msj_des."', '".$date."', '".$status."')"; 
	  $content = $wpdb->get_results( $query ) ; 
		
	}
	
	if(isset($_POST['get_all_msg']) && isset($_POST['user']))
	{

		$return_string="";
		$set_unread="";
		$msg  = $_POST['msg'];
		$user = $_POST['user'];
		//$user = mysql_real_escape_string($_POST['user']); 
		//mysqli_real_escape_string($enlace,$_POST['user']);
		$to     = $_POST['to'];
 		$msj_rem = $me;

		
		$query = "SELECT * FROM zuaru_mensajes WHERE (msj_rem = '$me' AND msj_des = '$user') OR (msj_rem = '$user' AND msj_des = '$me') ORDER BY (time) ASC";
		$content = $wpdb->get_results( $query ) ; 


		if ( count($content) > 0 ) {
          foreach ( $content as $row ) {
				$class="other";
				if($row->msj_rem == $me) $class = "me";
				$set_unread.="'".$row->msj_id."',";
				$return_string.="<span class='$class'> $row->msj_texto </span><br>";

          }
         } 

		
		$set_unread = trim($set_unread , ",");
		$query="UPDATE zuaru_mensajes SET status=1 WHERE msj_id IN($set_unread)"; 
	    $content = $wpdb->get_results( $query );
		
		
		echo $return_string;
		echo $me.",".$user;
	}
	
	if(isset($_POST['unread']))
	{
		$return_string=array();
		$set_unread="";		

		$query = "SELECT * FROM zuaru_mensajes WHERE msj_des = '$me' AND status=0 ORDER BY (time) DESC";
		$content = $wpdb->get_results( $query ) ; 

		if ( count($content) > 0 ) {
           foreach ( $content as $row ) {
			$return_string[$row->sender][]=$row->msj_texto;
			$set_unread.="'".$row->id."',";
           }
         }  

		
		$set_unread = trim($set_unread , ",");
		
		$query="UPDATE zuaru_mensajes SET status=1 WHERE msj_id IN($set_unread)"; 
	    $content = $wpdb->get_results( $query );
		
		
		print json_encode($return_string);
	}


	
	
?>