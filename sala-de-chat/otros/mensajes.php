<?php


/*
Template Name: Mensajes
*/


  
require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );


 



if (!isset($_COOKIE['invitado'])) {

//generador usuario invitado
$valorin = rand(1,999);
$invitado = "Guest_".$valorin;
setcookie("invitado", $invitado, time()+3600);

}else{

$invitado = $_COOKIE['invitado'];
setcookie("invitado", $invitado, time()+3600);

}



$pluing_url = "../wp-content/plugins/sala-de-chat/";

 ?>

<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 



<title>Chat</title> 

<script type="text/javascript">




var para;
function selected()
{

var texto;

    texto = "El numero de opciones del select: " + document.frm_chat.para.length 
    var indice = document.frm_chat.para.selectedIndex 
    texto += "nIndice de la opcion escogida: " + indice 
    var valor = document.frm_chat.para.options[indice].value 
    texto += "nValor de la opcion escogida: " + valor 
    var textoEscogido = document.frm_chat.para.options[indice].text 
    texto += "nTexto de la opcion escogida: " + textoEscogido 
    para = valor;
    
}


 </script>


<script type="text/javascript" > 


 


<!--
function popitup(url) {
  newwindow=window.open(url,'name','height=550,width=500,top=100, left=400');
  if (window.focus) {newwindow.focus()}
  return false;
}


  function cambio(valorsel){
    
     indice = document.frm_chat.para.selectedIndex=valorsel;     
     valor = document.frm_chat.para.options[indice].value;
     document.getElementById("texto_chat").focus(); 
     para = valor;
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




 
            $("#texto").load('<?php echo $pluing_url."/cargar.php"; ?>', {para:para}, function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#texto").html(msg + xhr.status + " " + xhr.statusText);
              }

            });



} 
   
setInterval("cargar()",1000);

function chatear() 
{ 
 
 texto_chat = document.getElementById('texto_chat').value;
 chat_user = document.getElementById('chat_user').value;
 document.getElementById('texto_chat').value = "";

 $(document).ready(function() { 

         

        $("#texto").load('<?php echo $pluing_url."/chatgeneral.php";?>', {texto:texto_chat,chat_user:chat_user,para:para}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#texto").html(msg + xhr.status + " " + xhr.statusText);
              }

           
            });

              
});


}  

</script> 

 <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/css/style.css" />
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-1.9.1.js"></script>

 <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jd.css" />
 <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jquery-1.11.2.min.js"></script>
 <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jd.js"></script>

 <style type="text/css">
    .step_box {
        background-color : #ffffff;
        border: 1.0px solid rgb(204, 204, 204);
        border-radius: 0.5em; 
    }
    .step_box:hover, #selected_step_box, .QuickStartLong:hover {
        background: #D8D8D8;
    }
    .selected {
        background-color : #D8D8D8;
    }
    </style>   
    <script type="text/javascript">
    $( document ).ready( function(){
        $('.step_wrapper').on('click','.step_box',function () {
             $('.step_box').removeClass('selected');
             $(this).addClass('selected')
        });
    });
    </script>

 
</head> 
<body > 



<form name="frm_chat" id="frm_chat" method="post" action="">
<div id="resultadomsj"> 
<h1>Mensajes Privados</h1>



<div id="textomsj"> 
 <?php 

require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );

global $wpdb;


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
<?php
echo '<div class="iframe-16-9"><iframe src="../wp-content/plugins/sala-de-chat/setprivado.php?id_user='.$usuario_rem.'" name="ventana_iframe" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>';

?>
</div>    



<div id="mensajesmsj">
  <div id="usuar"><?php if (is_user_logged_in()){  $cu = wp_get_current_user(); echo "Bienvenido";}else{ echo "Bienvenido";} ?></div>

<?php 
if (is_user_logged_in()){ 
?>

  <div id="home"><a class="link" href="<?php  echo get_page_link( get_page_by_title( 'Chat' )->ID );  ?>"> Inicio </a></div>  
  <div id="sala"><a class="link" href="<?php echo get_page_link( get_page_by_title( 'Salas' )->ID ); ?>"> Salas </a></div>
  <div id="salir"><a class="link" href="<?php echo plugins_url( 'logout.php', __FILE__ );?>"> Salir </a></div>

<?php
}
?> 
  
</div>  

<br><br>



</form>  



</body> 

