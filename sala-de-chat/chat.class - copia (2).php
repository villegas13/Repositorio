<?php


	
	
	$host="localhost";
	$user="root";
	$password="";
	$database="bdproyecto";
	

	$me = $_SESSION['JD_CURRUNT_USER'];

	
	
	require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );
    
    echo $me;


    global $wpdb;



    $mi_tabla = 'zuaru_chatfb';
    

	if(isset($_POST['send']))
	{		
		$to     = $_POST['to'];
		$msg    = mysql_real_escape_string($_POST['msg']);		
		$date   = date("Y-m-d H:i:s");
 		
		
	  $query="INSERT INTO zuaru_chatfb(id,sender,reciever,msg,time) values(0,'$me','$to','$msg','$date')"; 
	  $content = $wpdb->get_results( $query ) ; 
		
	}
	
	if(isset($_POST['get_all_msg']) && isset($_POST['user']))
	{

		$return_string="";
		$set_unread="";
		$msg  = $_POST['msg'];		
		$user = mysql_real_escape_string($_POST['user']); 
		//mysqli_real_escape_string($enlace,$_POST['user']);		
		
		$query = "SELECT * FROM zuaru_chatfb WHERE (sender = '$me' AND reciever = '$user') OR (sender = '$user' AND reciever = '$me') ORDER BY (time) DESC";
		$content = $wpdb->get_results( $query ) ; 


		if ( count($content) > 0 ) {
          foreach ( $content as $row ) {
				$class="other";
				if($row->sender == $me) $class = "me";
				$set_unread.="'".$row->id."',";
				$return_string.="<span class='$class' > $row->msg </span><br>";

          }
         } 

		
		$set_unread = trim($set_unread , ",");
		$query="UPDATE zuaru_chatfb SET status=1 WHERE id IN($set_unread)"; 
	    $content = $wpdb->get_results( $query );
		
		
		echo $return_string;
	}
	
	if(isset($_POST['unread']))
	{
		$return_string=array();
		$set_unread="";		

		$query = "SELECT * FROM zuaru_chatfb WHERE  reciever = '$me' AND status=0 ORDER BY (time) DESC";
		$content = $wpdb->get_results( $query ) ; 

		if ( count($content) > 0 ) {
           foreach ( $content as $row ) {
			$return_string[$row->sender][]=$row->msg;
			$set_unread.="'".$row->id."',";
           }
         }  

		
		$set_unread = trim($set_unread , ",");
		
		$query="UPDATE zuaru_chatfb SET status=1 WHERE id IN($set_unread)"; 
	    $content = $wpdb->get_results( $query );
		
		
		print json_encode($return_string);
	}
	
?>