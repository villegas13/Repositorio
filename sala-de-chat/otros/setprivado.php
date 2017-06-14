<?php

/*
Template Name: Privados
*/



if (isset($_GET['id_user'])){
$id_user = $_GET['id_user'];
}




require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );


$mi_tabla = 'wp_users';


global $wpdb;


$query = "SELECT * FROM ".$mi_tabla." WHERE id = ".$id_user;
$content = $wpdb->get_results( $query ) or die(); 


if ( count($content) > 0 ) {
    foreach ( $content as $row ) {
     $nom = $row->display_name;
     $user = $row->user_login;   
    }
}


if (!isset($_COOKIE['invitado'])) {

//generador usuario invitado
$valorin = rand(1,999);
$invitado = "Guest_".$valorin;
setcookie("invitado", $invitado, time()+3600);

}else{

$invitado = $_COOKIE['invitado'];
setcookie("invitado", $invitado, time()+3600);

}


$pluing_url = "/wp-content/plugins/sala-de-chat/";



?>
<html>
<head>
  <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/css/style.css" />
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-1.9.1.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.min.js"></script>
   <title><?php echo ucfirst($user);?></title>

 <script type="text/javascript" > 




<!--
function popitup(url) {
  newwindow=window.open(url,'popup3','height=550,width=600');
  if (window.focus) {newwindow.focus()}
  return false;
}

function popitup2(url) {
  newwindow=window.open(url,'popup4','height=110,width=310,top=100, left=400');
  if (window.focus) {newwindow.focus()}
  return false;
}




$(document).ready(function() { 

$('#texto_chat').keypress(function(event){  
   
    var keycode = (event.keyCode ? event.keyCode : event.which);  
    if(keycode == '13'){  
        chatear();  
    }  
  
}); 

});



function cargar() 
{ 

   
 texto_chat = document.getElementById('texto_chat').value;
 chat_user = document.getElementById('chat_user').value;
 chat_des = document.getElementById('chat_des').value;
 chat_rem = document.getElementById('chat_rem').value;

 
         $("#textoprivset").load('<?php echo $pluing_url."/cargarpriv.php"; ?>',{texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des},  function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textoprivset").html(msg + xhr.status + " " + xhr.statusText);
              }


            });


} 
 
setInterval("cargar()",1000);


function chatear() 
{ 
 
 texto_chat = document.getElementById('texto_chat').value;
 chat_user = document.getElementById('chat_user').value;
 chat_des = document.getElementById('chat_des').value;
 chat_rem = document.getElementById('chat_rem').value;
 document.getElementById('texto_chat').value = "";

 $(document).ready(function() { 


          
             $("#textoprivset").load("<?php echo plugins_url( 'chatpriv.php', __FILE__ );?>", {texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textoprivset").html(msg + xhr.status + " " + xhr.statusText);
              }


  
            });
       

});
 

}  


function borrar(id){
  
 
 chat_id = id;

 
         $("#textoprivset").load('<?php echo $pluing_url."/borrar.php"; ?>',{chat_id:chat_id},  function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textoprivset").html(msg + xhr.status + " " + xhr.statusText);
              }


            });

}


</script> 


</head>
<body id="body2">



<form name="frm_chat" id="frm_chat" method="post" action="">
<div id="resultadoprivset"> 
<h1>Privado con <?php echo $nom; ?></h1>



<div id="textoprivset"> 

</div> 


</div> 


<div id="botonesprivset"> 
<label id="mensaje">Mensaje:<br> 
<input  type="text" id="texto_chat" name="texto_chat" autocomplete="off" style="width:500px"></label>
<input type="button" id="enviar" name="enviar" value="Responder"  onclick="chatear()" > <br><br>
<?php 
  echo '<a href="popupsmiley.php" onclick="return popitup2(\''. $pluing_url.'popupsmiley.php' .'\')" ><img title="Agregar Smiley" src="'. get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/emojs/smile.gif' .'" ></a>&nbsp;&nbsp;';
  ?>
<label id="usuario">Usuario: <input type="text" id="chat_user" name="chat_user" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->user_login;} else{echo $_COOKIE['invitado'];} ?> > </label>
<input type="text" name="chat_des" id="chat_des" value=<?php echo $id_user?> >
<input type="text" name="chat_rem" id="chat_rem" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->ID;} ?>  >


</div> 
</form>
</body>
</html>