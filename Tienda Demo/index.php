<?php ini_set("display_errors", 0);
session_start();

include "con_bd.php";
include "urlamigables.php";

  function Capitalizar($nombre)
{
    // aca definimos un array de articulos (en minuscula)
    // aunque lo puedes definir afuera y declararlo global aca
    $articulos = array(
    '0' => 'a', '1' => 'de', '2' => 'del', '3' => 'la', '4' => 'los', '5' => 'las', '6' => 'en',
	'7' => 'ser', '8' => 'por', '9' => 'o', '10' => 'u', '11' => 'e', '12' => 'i', '13' => 'el', 
	'14' => 'en', '15' => 'con','16' => 'en', '17' => 'sin', '18' => 'so', '19' => 'pro', 
	'20' => 'vía',  '21' => 'no', '22' => 'él', '23' => 'al', '24' => 'que', '25' => 'y',
  '26' => 'se', '27' => 'Él', '28' => 'son', '29' => 'ese', '30' => 'esa', '31' => 'un',
   '32' => 'una',  '33' => 'ya',  '34' => 'una', '35' => 'sea', '36' => 'muy', '37' => 'sus', 
    '38' => 'su', '39' => 'dos', '40' => 'son', '41' => 'etc', '42' => 'etc.', '43' => 'es', 
	  '44' => 'si', '45' => 'ni', '46' => 'así', '47' => 'mas', '48' => 'más','49' => 'qué', 
		'50' => 'hay','50' => 'han', '50' => 'hoy',	'51' => 'ido', '52' => 'les','53' => 'eso',
		'54' => 'lo','55' => 'le','56' => 'li',	'57' => 'si','58' => 'su','59' => 'dio',
		'60' => 'tan','61' => 'ten','62' => 'fue',	'63' => 'mar',	'64' => 'sol',	'65' => 'sur',
		'66' => 'une','67' => 'uno','68' => 'fin',	'69' => 'año',	'70' => 'dan','71' => 'den',
		'72' => 'don','73' => 've',	'74' => 'vi','75' => 'va'
		

    );

    // explotamos el nombre
    $palabras = explode(' ', $nombre);

    // creamos la variable que contendra el nombre
    // formateado
    $nuevoNombre = '';

    // parseamos cada palabra
    foreach($palabras as $elemento)
    {
        // si la palabra es un articulo
        if(in_array(trim(strtolower($elemento)), $articulos))
            {
            // concatenamos seguido de un espacio
            $nuevoNombre .= strtolower($elemento)." ";
            } else {
            // sino, es un nombre propio, por lo tanto aplicamos
            // las funciones y concatenamos seguido de un espacio
            $nuevoNombre .= ucfirst(strtolower($elemento))." ";
            }
    }

    return trim($nuevoNombre);
}


	
$lineatitle="select * from categorias where id >= 27";
$resulttitle=mysql_query($lineatitle,$conexion);

$vtitle = "";
    while ($rowtitle = mysql_fetch_array($resulttitle)){ 
	 if ($rowtitle[0]==27) $vvtwitter = $rowtitle[1];
	 if ($rowtitle[0]==28) $vvface = $rowtitle[1];
	 if ($rowtitle[0]==29) $vtitle = $rowtitle[1];  	   	     
	}
	

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?php echo $vtitle;?></title>

<link rel="stylesheet" type="text/css" href="ext/jquery/ui/redmond/jquery-ui-1.8.6-osc.css" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="ext/jquery/ui/jquery-ui-1.8.6.min.js"></script>

<script type="text/javascript" src="ext/jquery/bxGallery/jquery.bxGallery.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="ext/jquery/fancybox/jquery.fancybox-1.3.4.css" />
<script type="text/javascript" src="ext/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="ext/jquery/jquery.equalheights.js"></script>
<script type="text/javascript" src="ext/js/DD_roundies.js"></script>
<script type="text/javascript" src="ext/jquery/jquery.corner.js"></script>
<script type="text/javascript" src="ext/js/coin-slider.js"></script>
<link rel="stylesheet" type="text/css" href="ext/960gs/960_24_col.css" />
<link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="css/constants.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/style_boxes.css">
<link rel="stylesheet" type="text/css" href="css/coin-slider-styles.css">
<link rel="stylesheet" type="text/css" href="css/css3.css">
<script type="text/javascript" src="ext/js/js.js"></script>


<!--[if lt IE 7]>
<div style='border: 1px solid #F7941D; background: #FEEFDA; text-align: center; clear: both; height: 75px; position: relative; z-index:5000' id="forie6"> 
	<div style='position: absolute; right: 3px; top: 3px; font-family: courier new; font-weight: bold;'>
		<a href="#" onclick="document.getElementById('forie6').style['display'] = 'none'"><img src="/osc_32836/ext/js/ie6/ie6nomore-cornerx.jpg" alt="Close this notice" title=" Close this notice "  style=\'border: none;\' /></a>
	</div> 
	<div style='width: 740px; margin: 0 auto; text-align: left; padding: 0; overflow: hidden; color: black;'> 
		<div style='width: 75px; float: left;'><img src="/osc_32836/ext/js/ie6/ie6nomore-warning.jpg" alt="Warning" title=" Warning " /></div> 
		<div style='width: 275px; float: left; font-family: Arial, sans-serif; color:#000'> 
			<div style='font-size: 14px; font-weight: bold; margin-top: 12px; color:#000'>You are using an outdated browser</div> 
			<div style='font-size: 12px; margin-top: 6px; line-height: 12px; color:#000'>For a better experience using this site, please upgrade to a modern web browser.</div> 
		</div>
		<div style='width: 75px; float: left;'>
			<a href='http://www.firefox.com' target='_blank'><img src="/osc_32836/ext/js/ie6/ie6nomore-firefox.jpg" alt="Get Firefox 3.5" title=" Get Firefox 3.5 "  style=\'border: none;\' /></a>
		</div>
		<div style='width: 75px; float: left;'>
			<a href='http://www.browserforthebetter.com/download.html' target='_blank'><img src="/osc_32836/ext/js/ie6/ie6nomore-ie8.jpg" alt="Get Internet Explorer 8" title=" Get Internet Explorer 8 "  style=\'border: none;\' /></a>
		</div> 
		<div style='width: 73px; float: left;'>
			<a href='http://www.apple.com/safari/download/' target='_blank'><img src="/osc_32836/ext/js/ie6/ie6nomore-safari.jpg" alt="Get Safari 4" title=" Get Safari 4 "  style=\'border: none;\' /></a>
		</div> 
		<div style='float: left; width: 73px;'>
			<a href='http://www.google.com/chrome' target='_blank'><img src="/osc_32836/ext/js/ie6/ie6nomore-chrome.jpg" alt="Get Google Chrome" title=" Get Google Chrome "  style=\'border: none;\' /></a>
		</div>
		<div style='float: left;'>
			<a href='http://www.opera.com/' target='_blank'><img src="/osc_32836/ext/js/ie6/ie6nomore-opera.jpg" alt="Opera" title=" Opera "  style=\'border: none;\' /></a>
		</div> 
	</div>
</div>
<![endif]-->

<link rel="stylesheet" href="css/jquery.superbox.css" type="text/css" media="all" />
	<style type="text/css">
		/* Custom Theme */
		#superbox-overlay{background:#000;}
		#superbox-container .loading{width:32px;height:32px;margin:0 auto;text-indent:-9999px;background:url(styles/loader.gif) no-repeat 0 0;}
		#superbox .close a{float:right;padding:0 5px;line-height:20px;background:#333;cursor:pointer;}
		#superbox .close a span{color:#fff;}
		#superbox .nextprev a{float:left;margin-right:5px;padding:0 5px;line-height:20px;background:#333;cursor:pointer;color:#fff;}
		#superbox .nextprev .disabled{background:#ccc;cursor:default;}
	</style>
	
	<script type="text/javascript" src="css/jquery.superbox.js"></script>
	<script type="text/javascript">
		$(function(){
			$.superbox.settings = {
				closeTxt: "Cerrar",
				loadTxt: "Abriendo...",
				nextTxt: "Siguiente",
				prevTxt: "Anterior"
			};
			$.superbox();
		});
	</script>

<script>
  
function ValidaCampo(campo) {  
  if (campo == "") {     
    return (false); 
  }  
  
  var ubicacion 

  var caracteres = "abcdefghijklmnopqrstuvwxyzñ1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZÑáéíóúÁÉÍÓÚ";  
  
  var contador = 0  
  for (var i=0; i < campo.length; i++) {  
    ubicacion = campo.substring(i, i + 1)  
    if (caracteres.indexOf(ubicacion) != -1) {  
      contador++  
    } else {         
      return (false);  
    }  
  }  
  
  return (true);
    
}  
  
</script>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>
<!--[if lt IE 9]>
  <script type="text/javascript" src="/js/excanvas/excanvas.js"></script>
<![endif]-->
<script type="text/javascript" src="js/spinners/spinners.min.js"></script>
<script type="text/javascript" src="js/lightview/lightview.js"></script>

<link rel="stylesheet" type="text/css" href="css/lightview/lightview.css"/>

</head>
<body>

<div class="bg_body row_1">
        <div id="bodyWrapper" class="container_24 ofh">
			
<div id="header">
	<div class="cl_both">
           
            <a class="logo fl_left" href="index.php" style=" margin-bottom:15px" ><img width="25%" src="images/logo.png" /> </a>
            
<div class="fl_right navigation_block" align="right">
                
                <div class="cl_both ofh">
    				<div class="search ofh">
    	
        
    <form name="busc" autocomplete = "off"  action="busqueda.php" method="post" >    	<label class="fl_left">Buscar: </label>
		<div class="input-width fl_left">
			<div class="width-setter">        
        <input name="q2"  type="text"  id="q2" maxlength="60" class="go"  value="Introduzca término a buscar" onblur="if(this.value=='') this.value='Introduzca término a buscar'" onfocus="if(this.value =='Introduzca término a buscar' ) this.value=''">
			</div>
        </div>
		<input type="image" src="includes/languages/english/images/buttons/button_search_prod.gif" alt=""  class="button_search_prod fl_left" /></form> 
                	</div>
            	</div>
                 
		</div>

	</div>
</div>

		

        </div>
</div>
				<div class="bg_body row_2">
                
                
        <div id="bodyWrapper" class="container_24 ofh">
        
                
                <!-- menu cart END-->
                    <ul class="menu">		
                
                            <li class="menu_item first selected" onClick="document.location='index.php'"><a> Inicio</a></li>
                            <li class="menu_item " onClick="document.location='promociones.php'"><a>Promociones</a></li>     
                            <li class="menu_item " onClick="document.location='empresa.php'"><a>La Empresa</a></li>
                            <li class="menu_item " onClick="document.location='inicio.php'"><a>Mi Cuenta</a></li>
                            <li class="menu_item last " onClick="document.location='contacto.php'"><a>Contacto</a></li>
                    </ul>
                <!-- menu cart END--> 
                   
    	</div>
</div>
				
	
<div class="bg_body row_3">
		<div id="bodyWrapper" class="container_24 ofh">
        	<div class="grid_24"><!-- header slider -->


            <div class="grid_24">
<!-- navigation END-->
                <div class="cl_both ofh navigation">
                  <div class="languages fl_left"></div>

                    
                <div class="navigation_separanor fl_left"></div>                               
                    <div class="languages fl_left"></div> 
				  <div class="navigation_separanor fl_left"></div>
				  <div class="languages fl_left"></div>
<div class="fl_right" style="padding-right:35px" >
            <?php
					if (isset($_SESSION['idusuario'])) {
                      echo  '<span class="fl_left" style="color: #ce9c03;">'.Capitalizar($_SESSION['nombre']).'</span>&nbsp;                        
                       <a href="salir.php"><img src="images/salir.png" style="border:0px; height:23px; width:23px; cursor:pointer" alt="Cerrar Sesi&oacute;n" title="Cerrar Sesi&oacute;n" /></a>&nbsp;&nbsp;';
					}else{
					echo  '<a href="registro.php" style="text-decoration:none"><span class="fl_left" style="color: #ce9c03;">Crear mi cuenta</span></a>&nbsp&nbsp;';                        						
					}
			
   
    if ($vvtwitter != ""){
	  echo '<a target="_blank" href="https://twitter.com/'.$vvtwitter.'"><img src="images/twitter.jpg" style="border:0px"></a>';}
	  echo '&nbsp;&nbsp;';
	 if ($vvface != ""){ 
	 echo '<a target="_blank" href="https://www.facebook.com/'.$vvface.'"><img src="images/facebook.jpg" style="border:0px"></a>';}
      
    					
					?>	
						
            </div>
                
	
              </div>
<!-- navigation END--> 

</div>
		</div>
</div>

<div class="bg_body row_4">
    <div class="wrapper-padd">
<div id="bodyWrapper" class="container_24 ofh">
        
            <div id="bodyContent" class="grid_18 push_6">




<div class="wrapper_content">

<div class="contentContainer page_un un">

  <div class="contentPadd un">

    <div class="prods_content prods_table">
 
    
    <?php
	
	$linea = "select * from publicados where nivel = 1 and status = 'AC' order by rand() limit 12";
    $result = mysql_query($linea);
	
     if ( mysql_affected_rows()>0){		
	 $vtopcont = mysql_affected_rows();
		 		   
   		   $vcont = 0;$vcontp = 0;	
    while ($row = mysql_fetch_array($result)){ 	
 		   $vcont++;$vcontp++;
		  
		   $vid = $row[0]; 		    
		   $vtitulo = $row[5];		  
		   $vcosto = $row[7];
		   $vsubtitulo = $row[9];
		   $vcantidad = $row[11];
		   $vpara = $row[18];
		   
	//obtiene nombre de imagen
	$sqlimg = "SELECT archivo_nombre FROM publicados WHERE id='".$row[0]."' ";
    $consulta = mysql_query($sqlimg,$conexion);
    $arcnombre = mysql_result($consulta,0,"archivo_nombre");
		   	
 			
			
	if ($vcont == 1) echo'<ul class="row" id="row-0">';
	
					
		echo '<li style="width:190px;" class="wrapper_prods">';	
	
	 echo '<div class="pic_padd wrapper_pic_div extra" style="width:190px;height:217px;">
	   <a class="prods_pic_bg" href="detalles.php?idd='.$vid.'" style="width:190px;height:217px;">
	   <img src="timthumb.php?src=/fotospub/'.$arcnombre.'&h=217&w=190&zc=1&q=90"  style="width:190px;height:217px;" />
	   
			<div class="wrapper_pic_t">

				<div class="wrapper_pic_r">

					<div class="wrapper_pic_b">

						<div class="wrapper_pic_l">

							<div class="wrapper_pic_tl">

								<div class="wrapper_pic_tr">

									<div class="wrapper_pic_bl">

										<div class="wrapper_pic_br" style="width:190px;height:217px;">
</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>
</a></div>
		<div class="box-padd">
			<div class="name name_padd  equal-height"><span><a href="detalles.php?idd='.$vid.'">'.$vtitulo.'</a></span></div>';
		echo '<h2 class="price price_padd un"><b>Price:&nbsp;&nbsp;</b><span class="productSpecialPrice">BsF '.$vcosto.'</span></h2>';
		echo '<div class="button__padd button_un">';	
			
			if ($vcantidad > 0){
			
			
			echo '<div class="bg_button2" onMouseOut="this.className=\'bg_button2\';" onMouseOver="this.className=\'bg_button2-act\';"><div class="button-t"><a href="login_template.php?width=620&height=420&idart='.$vid.'" 
   class="lightview ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary ui-priority-secondary" 
   data-lightview-type="iframe" 
   data-lightview-options="width: 620, height: 420, skin: \'light\'" ><span class="ui-button-icon-primary ui-icon ui-icon-cart"></span><span  class="ui-button-text">Comprar</span></a></div></div>';
			
			
			}
			else{				
			echo '<div class="bg_button2" onMouseOut="this.className=\'bg_button2\';" onMouseOver="this.className=\'bg_button2-act\';"><div class="button-t"><a id="tdb1" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary ui-priority-secondary" ><span class="ui-button-icon-primary ui-icon ui-icon-cart"></span><span class="ui-button-text">Agotado</span></a></div></div>';
			}
					
		  echo '<div class="bg_button22" onMouseOut="this.className=\'bg_button22\';" onMouseOver="this.className=\'bg_button22-act\';"><div class="button-t">
			<a href="detalles.php?idd='.$vid.'" id="tdb1" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary ui-priority-secondary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-triangle-1-e"></span><span class="ui-button-text">Detalles</span></a></div></div>	
             </div>
		</div>
</li>';

if ($vcont == 3 || ($vcontp == $vtopcont)) echo '</ul>';

if ($vcont == 3){
echo '<ul><li class="prods_hseparator"><img src="images/spacer.gif" alt="" width="1" height="1" /></li></ul>';
$vcont = 0;
}


	}

}

?>

</div>  </div>	

<script type="text/javascript">
        $(document).ready(function(){ 			
			 var row_list = $('.row');
			 row_list.each(function(){
				 new equalHeights($('#' + $(this).attr("id")));
			  });			 			 			  			  			  			  			   
        })      
</script>

</div>
</div>

</div> <!-- bodyContent //-->

  


<div id="columnLeft" class="grid_6 pull_18">

  <div><div class="infoBoxWrapper list">
  
   <?php

if (isset ($_SESSION['nivel']) && $_SESSION['nivel'] == 1){

$lineamsj="select * from mensajes where status = 'NL'";
$resultmsj=mysql_query($lineamsj,$conexion);
$totmsj = mysql_affected_rows();

$lineavent="select * from ventas where status = 'PE'";
$resultvent=mysql_query($lineavent,$conexion);
$totvent = mysql_affected_rows();

echo '<div class="infoBoxHeading"><span>
Opciones</span>
</div>
<div class="infoBoxContents">
<ul class="categories">
<li ><a href="pubarticulo.php">Publicar</a></li>
<li ><a href="articulos.php">Publicaciones</a></li>
<li ><a href="operaciones.php">Operaciones activas ('.$totvent.')</a></li>
<li ><a href="operacionespr.php">Operaciones finalizadas</a></li>
<li ><a href="admincat.php">Categorías / Sub-categorías</a></li>
<li ><a href="mensajes.php">Mensajes ('.$totmsj.')</a></li>
<li ><a target="_blank" href="http://intensedebate.com/moderate/372797">Preguntas / Comentarios</a></li>
<li ><a href="usuariosreg.php">Usuarios</a></li>
<li ><a href="notificaciones.php">Estado de las ventas</a></li>
<li ><a href="salir.php">Cerrar Sesión</a></li>
</ul></div><br>';
	

}


?>  
    <div class="infoBoxHeading"><span>
Categorías</span>
</div> 

<?php

echo '<div class="infoBoxContents">
<ul class="categories">';

$lineacat="select * from categorias where status = 'AC'";
$resultcat=mysql_query($lineacat,$conexion);
while ($rowcat = mysql_fetch_array($resultcat)){ 
$vidcat = $rowcat[0];
$vnombrecat = $rowcat[1];
	
	$lineacatsb="select * from subcategorias where idcat = '$vidcat'";
	$resultcatsb=mysql_query($lineacatsb,$conexion);
	

	if (mysql_affected_rows() == 0) echo '<li ><a href="listado.php?idcat='.$vidcat.'">'.utf8_encode ($vnombrecat).'</a></li>';
else echo '<li ><a href="listado.php?idcat='.$vidcat.'">'. utf8_encode ($vnombrecat).'<span class="category_arrow"></span></a></li>';	

	 
}
echo '</ul>
</div>';

?>


</div>

<div class="infoBoxWrapper box3"> 



<div class="wrapper_content">


<div class="contentContainer page_un un">

  <div class="infoBoxHeading" style="margin:3px"><span>
Recomendados</span>
</div> 

  <div class="contentPadd un">

    <div class="prods_content prods_table" >
 
    
    <?php
	
	
	
	$linea = "select * from publicados where nivel = 1 and status = 'AC' order by rand() limit 2";
    $result = mysql_query($linea);
	
     if ( mysql_affected_rows()>0){		
	 $vtopcont = mysql_affected_rows();
		 		   
   		   $vcont = 0;$vcontp = 0;	
    while ($row = mysql_fetch_array($result)){ 	
 		   $vcont++;$vcontp++;
		  
		   $vid = $row[0]; 		    
		   $vtitulo = $row[5];		  
		   $vcosto = $row[7];
		   $vsubtitulo = $row[9];
		   $vcantidad = $row[11];
		   $vpara = $row[18];
		   
	//obtiene nombre de imagen
	$sqlimg = "SELECT archivo_nombre FROM publicados WHERE id='".$row[0]."' ";
    $consulta = mysql_query($sqlimg,$conexion);
    $arcnombre = mysql_result($consulta,0,"archivo_nombre");
		   	
 			
			
	if ($vcont == 1) echo'<ul  id="row-0">';
	
					
		echo '<li    >';	
	
	 echo '<div  class="pic_padd wrapper_pic_div extra" style="width:120px;height:150px; padding:0 25px 0 25px" >
	   <a class="prods_pic_bg" href="detalles.php?idd='.$vid.'" style="width:120px;height:150px;">
	   <img   src="timthumb.php?src=/fotospub/'.$arcnombre.'&h=150&w=120&zc=1&q=90"  style="width:120px;height:150px;" />
	   
			<div class="wrapper_pic_t">

				<div class="wrapper_pic_r">

					<div class="wrapper_pic_b">

						<div class="wrapper_pic_l">

							<div class="wrapper_pic_tl">

								<div class="wrapper_pic_tr">

									<div class="wrapper_pic_bl">

										<div class="wrapper_pic_br" style="width:120px;height:150px;">
</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>
</a></div>
		<div class="box-padd">
			<div class="name name_padd  equal-height"><span><a href="detalles.php?idd='.$vid.'">'.$vtitulo.'</a></span></div>
			
		</div>
</li>';

if ($vcont == 3 || ($vcontp == $vtopcont)) echo '</ul>';



	}

}

?>

</div>  </div>

<script type="text/javascript">
        $(document).ready(function(){ 			
			 var row_list = $('.row');
			 row_list.each(function(){
				 new equalHeights($('#' + $(this).attr("id")));
			  });			 			 			  			  			  			  			   
        })      
</script>

</div>
</div>

<div class="infoBoxWrapper list extra">  <div class="infoBoxHeading"></div>
</div></div>
</div>

      </div>
    </div>
</div>

<div class="bg_body" style="margin-top:20px; ">
    <div class="wrapper-padd">
        <div id="bodyWrapper" class="container_24 ofh">
        <div class="grid_24 footer_menu  footer" style="height:50px" >
  	<p style="font-size:14px; line-height:17px; padding:0 16px; color:#FFF">
</div>


<script type="text/javascript">
$('.productListTable tr:nth-child(even)').addClass('alt');
</script>
        </div> <!-- bodyWrapper //-->
    </div>	
</div>
</body>
<!--[if IE]>
  <link href="css/ie_style.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if gt IE 7]>




/'.urls_amigables($vtitulo).'/articulo/'.$vid.'/





  <link href="css/ie8_style.css" rel="stylesheet" type="text/css" />
<![endif]-->
  <script type="text/javascript" src="ext/js/imagepreloader.js"></script>
  <script type="text/javascript">
		preloadImages([
			'images/wrapper_pic.png',
			'images/wrapper_pic-act.png',			
			'images/bg_button2.png',
			'images/bg_button2-act.png']);
	</script>
    	
</html>