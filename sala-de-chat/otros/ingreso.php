<?php

/*
Template Name: Ingreso
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
	<title>Formulario ingreso</title>

<script type="text/javascript" > 
function ingreso() 
{ 
 
 usuario = document.getElementById('usuario').value;
 pass = document.getElementById('pass').value;

 $(document).ready(function() { 
          
          /* 
        $("#registromsj").load("../wp-content/plugins/sala-de-chat/ingresar.php", {usuario:usuario,pass:pass}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#registromsj  ").html(msg + xhr.status + " " + xhr.statusText);
          }

         });
        */


 
                $.ajax({ 
                data:  "usuario="+usuario+"&pass="+pass, 
                url:   '../wp-content/plugins/sala-de-chat/ingresar.php', 
                type:  'post', 
                beforeSend: function () { 
                        $("#ingresomsj").html("Procesando, espere por favor...");  
                }, 
 
               success:  function (response) { 
                 //window.location.reload();                 
                
                  if(response=='true')
                  {
                    document.location.href = "http://localhost/proyecto/";
                  }
                  else
                  {
                    $("#ingresomsj").html("El usuario y/o contraseña son incorrectos");
                  }
                                                          
                   }

               });

  
});
} 
</script> 
</head>
<body>
  <form id="frm_ingreso" name="frm_ingreso" method="post" action="../wp-content/plugins/sala-de-chat/ingresar.php"> 
    <div id="ingreso">
        <h1>Ingresar</h1>        
        <div id="usu"><label>Usuario:  <br><input type="text" id="usuario" name="usuario" ><br></label></div>
        <div id="pas"><label>Password:  <br><input type="password" id="pass" name="pass" ><br></label></div>       
        <div id="reg"><br><input type="submit" id="registrar" name="registrar" value="Ingresar"  > </div><div id="ingresomsj"></div><br><br> 
    </div>
	</form>
</body>
</html>