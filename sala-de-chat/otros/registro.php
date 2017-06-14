<?php

/*
Template Name: Registro
*/

?>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/css/style.css" />
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-1.9.1.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/js/jquery-ui-1.10.3.custom.min.js"></script>
    
	<meta charset="UTF-8">
	<title>Formulario registro</title>

<script type="text/javascript" > 
function registro() 
{ 
 
 nombre = document.getElementById('nombre').value;
 email = document.getElementById('email').value;
 usuario = document.getElementById('usuario').value;
 pass = document.getElementById('pass').value;

 $(document).ready(function() { 
           

        $("#registromsj").load("<?php echo plugins_url( 'registrar.php', __FILE__ );?>", {nombre:nombre,email:email,usuario:usuario,pass:pass}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#registromsj").html(msg + xhr.status + " " + xhr.statusText);
          }

         });

});
} 
</script> 
</head>
<body>
    <div id="registro">
        <h1>Registro de Usuarios</h1>
        <div id="nom"><label>Nombre:  <br><input type="text" id="nombre" name="nombre" ><br></label></div>
        <div id="ema"><label>E-mail:  <br><input type="text" id="email" name="email" ><br></label></div>       
        <div id="usu"><label>Usuario:  <br><input type="text" id="usuario" name="usuario" ><br></label></div>
        <div id="pas"><label>Password:  <br><input type="password" id="pass" name="pass" ><br></label></div> 
        <div id="reg"><br><input type="button" id="registrar" name="registrar" value="Procesar Registro"  onclick="registro()" > </div><div id="registromsj"></div><br><br> 
    </div>
	
</body>
</html>