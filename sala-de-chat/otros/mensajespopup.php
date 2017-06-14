<?php

/*
Template Name: Privados
*/



if (isset($_GET['id_user'])){
$id_user = $_GET['id_user'];
}




require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );




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


 
$("#textopriv").load('<?php echo $pluing_url."/popupcargarpriv.php"; ?>',{texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des},  function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textopriv").html(msg + xhr.status + " " + xhr.statusText);
              }

            });


} 
 
setInterval("cargar()",1000);
//var timeoutId = setTimeout("cargar()",2000);


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


<div id="textopriv"> 



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
<input type="text" name="chat_des" id="chat_des" value=<?php echo $id_user?> >
<input type="text" name="chat_rem" id="chat_rem" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->ID;} ?>  >



</div> 
</form>
</body>
</html>