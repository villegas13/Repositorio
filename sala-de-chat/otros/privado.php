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


if (!isset($_SESSION['invitado'])) {

//generador usuario invitado
$valorin = rand(1,999);
$invitado = "Invitado#".$valorin;
//setcookie("invitado", $invitado, time()+3600);
$_SESSION["invitado"] = $invitado;

}else{

$invitado = $_SESSION["invitado"];

session_unset();
session_destroy();

$_SESSION["invitado"] = $invitado;
//setcookie("invitado", $invitado, time()+3600);

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

 
$("#textopriv").load('<?php echo $pluing_url."/cargarpriv.php"; ?>',{texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des},  function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textopriv").html(msg + xhr.status + " " + xhr.statusText);
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

 
          
        $("#textopriv").load("<?php echo plugins_url( 'chatpriv.php', __FILE__ );?>", {texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textopriv").html(msg + xhr.status + " " + xhr.statusText);
              }

  
            });
       

});
 

}  

</script> 


</head>
<body id="body2">



<form name="frm_chat" id="frm_chat" method="post" action="">
<div id="resultadopriv"> 
<h1>Privado con <?php echo $nom; ?></h1>



<div id="textopriv"> 
<?php

$mi_tabla = 'wp_users';
$query = "SELECT * FROM ".$mi_tabla;
$content = $wpdb->get_results( $query ) or die(); 


if ( count($content) > 0 ) {
     foreach ( $content as $row ) {

      
      $id_usuario = $row->ID;
      $nombre = $row->display_name; 



      $mi_tabla2 = 'zuaru_mensajes';
      $query2 = "SELECT * FROM ".$mi_tabla2. " WHERE msj_rem  = ".$id_usuario." ORDER BY time DESC LIMIT 1";      
      $content2 = $wpdb->get_results( $query2 ) or die();

      

      if (is_user_logged_in()){
       $cu = wp_get_current_user();
       $id_conectado = $cu->ID;
      }

        if ( count($content2) > 0 ) {
            foreach ( $content2 as $row2 ) {
              
              if ($id_conectado == $row2->msj_des){

                  $usuario_rem = $row2->msj_rem;
                  $emisor = $row2->msj_user;
                  $texto = $row2->msj_texto;

                  $date = date_create($row2->time);
                  $time = date_format($date, 'g:i A'); 

        echo '<div class="step_wrapper">
        <a href="../wp-content/plugins/sala-de-chat/setprivado.php?id_user='.$row2->msj_rem.'" target="ventana_iframe"><div id="chatset" class="step_box"  ><span class="user">'."[".$time."] ".ucfirst($emisor). ' : '.$texto.'</span><div class="user"></div></div></a>
              </div>';

                  }

            }
        }


  }
}


?>



</div> 


</div> 




<div id="botonespriv"> 
  <label id="mensaje">Mensaje:<br> 
<input  type="text" id="texto_chat" name="texto_chat" autocomplete="off" style="width:300px"></label> 
<input type="button" id="enviar" name="enviar" value="Enviar"  onclick="chatear()" > <br><br>
<?php 
  echo '<a href="popupsmiley.php" onclick="return popitup2(\''. $pluing_url.'popupsmiley.php' .'\')" ><img title="Agregar Smiley" src="'. get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/emojs/smile.gif' .'" ></a>&nbsp;&nbsp;';
  ?>
<label id="usuario">Usuario: <input type="text" id="chat_user" name="chat_user" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->user_login;} else{echo $_COOKIE['invitado'];} ?> > </label>
<input type="hidden" name="chat_des" id="chat_des" value=<?php echo $id_user?> >
<input type="hidden" name="chat_rem" id="chat_rem" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->ID;} ?>  >



</div> 
</form>
</body>
</html>