<?php

/*
Template Name: Salas
*/



if (!isset($_COOKIE['invitado'])) {

//generador usuario invitado
$valorin = rand(1,999);
$invitado = "Guest_".$valorin;
setcookie("invitado", $invitado, time()+3600);

}else{

$invitado = $_COOKIE['invitado'];
setcookie("invitado", $invitado, time()+3600);

}



 ?>

<html> 
<head> 

<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/css/style.css" />
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-1.9.1.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Salas</title> 




<script type="text/javascript" > 


function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    }


 function getCookie(cname) {
      var name = cname + "=";
      var ca = document.cookie.split(';');
          for (var i = 0; i < ca.length; i++) {
             var c = ca[i];
                while (c.charAt(0) == ' ')
                  c = c.substring(1);
                  if (c.indexOf(name) == 0)
                     return c.substring(name.length, c.length);
                }
                return "";
   }



var invitado = getCookie("invitado");

    if (invitado != "") {
     
     // valor = getCookie("invitado");      
     // document.cookie="invitado=" + invitado + "expires=Thu, 16 Dec 2015 12:00:00 UTC"; 
     // setCookie("invitado", valor,1);

     }else{

    //  rand = Math.round(Math.random()*999);
    //  valor = "Guest_" + rand;
    //  setCookie("invitado", valor,1);

    }

 invitado = getCookie("invitado");

 

<!--
function popitup(url) {
  newwindow=window.open(url,'name','height=550,width=500,top=100, left=400');
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

 $(document).ready(function() { 
   $("#texto").load("<?php echo plugins_url( 'cargar.php', __FILE__ );?>");
  });

} 
 
setInterval("cargar()",1000);

function chatear() 
{ 
 
 texto_chat = document.getElementById('texto_chat').value;
 chat_user = document.getElementById('chat_user').value;
 
 $(document).ready(function() { 


          
        $("#texto").load("<?php echo plugins_url( 'chatgeneral.php', __FILE__ );?>", {texto:texto_chat,chat_user:chat_user}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#texto").html(msg + xhr.status + " " + xhr.statusText);
              }

           


            });

       

});



}  

</script> 


 

</head> 
<body> 


  
  <form name="frm_chat" id="frm_chat" method="post" action="">
<div id="resultadomsj"> 
<h1>Salas</h1>



<div id="textomsj"> 
 <?php 

require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );

global $wpdb;

$mi_tabla = 'zuaru_salas';
$query = "SELECT * FROM ".$mi_tabla;
$content = $wpdb->get_results( $query ) or die(); 


if ( count($content) > 0 ) {
    foreach ( $content as $row ) {
      
        
echo '<div class="chat"><span class="user">'.ucfirst($row->nombre).'</span><br>'.$row->frase.' <a class="user" href="http://localhost/proyecto/"?id_sala='.$row->id.'>Entrar</a></div>';  

         

    }
}

?>
</div> 


</div>    



<div id="mensajes">
   <div id="usuar"><?php if (is_user_logged_in()){  $cu = wp_get_current_user(); echo "Bienvenido";}else{ echo "Bienvenido";} ?></div>
  <div id="home"><a href="<?php  echo get_page_link( get_page_by_title( 'Chat' )->ID );  ?>"> Inicio </a></div>
  <div id="mensa"><a href="<?php  echo get_page_link( get_page_by_title( 'Mensajes' )->ID ); ?>"> Privados </a></div>  
  <div id="salir"><a href="<?php echo plugins_url( 'logout.php', __FILE__ );?>"> Salir </a></div>
</div>   
<script type="text/javascript">
document.frm_chat.chat_user.value = invitado;
</script>

<br><br>



</form>



</body> 