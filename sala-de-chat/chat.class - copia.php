<?php


	
	
	$host="localhost";
	$user="root";
	$password="";
	$database="bdproyecto";
	

	$enlace = mysqli_connect($host,$user,$password,$database);	


	$me = $_SESSION['JD_CURRUNT_USER'];
	
	include_once '../../../wp-load.php';
    $dbh = new wpdb( "root", "", "bdproyecto", "localhost" );


    $mi_tabla = 'zuaru_chatfb';
    

	if(isset($_POST['send']))
	{		
		$to     = $_POST['to'];
		$msg    = mysqli_real_escape_string($enlace,$_POST['msg'] );
		$date   = date("Y-m-d H:i:s");
 
		mysqli_query($enlace, "INSERT INTO zuaru_chatfb(id,sender,reciever,msg,time) values(0,'$me','$to','$msg','$date')");
		
	}
	
	if(isset($_POST['get_all_msg']) && isset($_POST['user']))
	{

		$return_string="";
		$set_unread="";
		$user = mysqli_real_escape_string($enlace,$_POST['user']);
		$data=mysqli_query($enlace,"SELECT * FROM zuaru_chatfb WHERE (sender = '$me' AND reciever = '$user') OR (sender = '$user' AND reciever = '$me') ORDER BY (time) DESC");
		while($row = mysqli_fetch_object($data))
		{
			$class="other";
			if($row->sender == $me) $class = "me";
			$set_unread.="'".$row->id."',";
			$return_string.="<span class='$class' > $row->msg </span><br>";
		}
		$set_unread = trim($set_unread , ",");
		mysqli_query($enlace, "UPDATE zuaru_chatfb SET status=1 WHERE id IN($set_unread)");
		
		echo $return_string;
	}
	
	if(isset($_POST['unread']))
	{
		$return_string=array();
		$set_unread="";
		$data=mysqli_query($enlace, "SELECT * FROM zuaru_chatfb WHERE  reciever = '$me' AND status=0 ORDER BY (time) DESC");
		while($row = mysqli_fetch_object($data))
		{					
			$return_string[$row->sender][]=$row->msg;
			$set_unread.="'".$row->id."',";
		}
		$set_unread = trim($set_unread , ",");
		
		mysqli_query($enlace, "UPDATE zuaru_chatfb SET status=1 WHERE id IN($set_unread)");
		
		print json_encode($return_string);
	}
	
?>
