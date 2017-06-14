<?php


/*
Plugin Name: Sala de Chat
Description: Pluing para chat
Version: 1.0
Author: Zuaru
*/

 


class PageTemplater {
  /**
   * A reference to an instance of this class.
   */
  private static $instance;
  /**
   * The array of templates that this plugin tracks.
   */
  protected $templates;
  /**
   * Returns an instance of this class. 
   */
  public static function get_instance() {
    if ( null == self::$instance ) {
      self::$instance = new PageTemplater();
    } 
    return self::$instance;
  } 
  /**
   * Initializes the plugin by setting filters and administration functions.
   */
  private function __construct() {
    $this->templates = array();
    // Add a filter to the attributes metabox to inject template into the cache.
    add_filter(
      'page_attributes_dropdown_pages_args',
      array( $this, 'register_project_templates' ) 
    );
    // Add a filter to the save post to inject out template into the page cache
    add_filter(
      'wp_insert_post_data', 
      array( $this, 'register_project_templates' ) 
    );
    // Add a filter to the template include to determine if the page has our 
    // template assigned and return it's path
    add_filter(
      'template_include', 
      array( $this, 'view_project_template') 
    );
    // Add your templates to this array.
    $this->templates = array(
      'ingreso.php' => 'Ingreso',
      'registro.php' => 'Registro',
      'mensajes.php' => 'Mensajes',
      'salas.php' => 'Salas',
      'privado.php' => 'Privados',
    );
      
  } 
  /**
   * Adds our template to the pages cache in order to trick WordPress
   * into thinking the template file exists where it doens't really exist.
   *
   */
  public function register_project_templates( $atts ) {
    // Create the key used for the themes cache
    $cache_key = 'page_templates-' . md5( get_theme_root() . '/' . get_stylesheet() );
    // Retrieve the cache list. 
    // If it doesn't exist, or it's empty prepare an array
    $templates = wp_get_theme()->get_page_templates();
    if ( empty( $templates ) ) {
      $templates = array();
    } 
    // New cache, therefore remove the old one
    wp_cache_delete( $cache_key , 'themes');
    // Now add our template to the list of templates by merging our templates
    // with the existing templates array from the cache.
    $templates = array_merge( $templates, $this->templates );
    // Add the modified cache to allow WordPress to pick it up for listing
    // available templates
    wp_cache_add( $cache_key, $templates, 'themes', 1800 );
    return $atts;
  } 
  /**
   * Checks if the template is assigned to the page
   */
  public function view_project_template( $template ) {
    
    // Get global post
    global $post;
    // Return template if post is empty
    if ( ! $post ) {
      return $template;
    }
    // Return default template if we don't have a custom one defined
    if ( !isset( $this->templates[get_post_meta( 
      $post->ID, '_wp_page_template', true 
    )] ) ) {
      return $template;
    } 
    $file = plugin_dir_path(__FILE__). get_post_meta( 
      $post->ID, '_wp_page_template', true
    );
    // Just to be safe, we check if the file exist first
    if ( file_exists( $file ) ) {
      return $file;
    } else {
      echo $file;
    }
    // Return template
    return $template;
  }
} 
add_action( 'plugins_loaded', array( 'PageTemplater', 'get_instance' ) );



if ( ! function_exists('anuncios_post_type') ) {
// Creamos los parametros
function anuncios_post_type() {
 
  $labels = array(
   'name'         => __( 'Chats'),
   'singular_name'     => __( 'Chat'),
   'menu_name'       => __( 'Chats'),
   'name_admin_bar'   => __( 'Chats'),
   'all_items'       => __( 'Todos los Chats'),
   'add_new_item'     => __( 'Añadir Chat'),
   'add_new'       => __( 'Añadir nuevo' ),
   'new_item'       => __( 'Nuevo Chat'),
   'edit_item'       => __( 'Editar Chat' ),
   'update_item'     => __( 'Actualizar chat'),
   'view_item'       => __( 'Ver chat'),
   'search_items'     => __( 'Buscar chats'),
   'not_found'       => __( 'No se ha encontrado :(' ),
   'not_found_in_trash'  => __( 'Papelera vacia'),
  );

  // Configuramos las opciones que tendra el post
  $args = array(
   'label'         => __( 'anuncios'),
   'description'     => __( 'Anuncios varios' ),
   'labels'       => $labels,
   'supports'       => array( 'title', 'editor', 'thumbnail', ),
   'hierarchical'     => false,
   'public'       => true,
   'show_ui'       => true,
   'show_in_menu'     => true,
   'menu_position'     => 20,
   'menu_icon'       => 'dashicons-editor-quote',
   'show_in_admin_bar'   => false,
   'show_in_nav_menus'   => false,
   'can_export'     => true,
   'has_archive'     => false,
   'exclude_from_search' => true,
   'publicly_queryable'  => true,
   'capability_type'   => 'page',
  );
 
  // Registramos la el post para que este disponible
  register_post_type( 'anuncios', $args );
  }
// Añadimos el post para que funcione en Wordpress
add_action( 'init', 'anuncios_post_type', 0 );
}


// register jquery and style on initialization
add_action('init', 'register_script');
function register_script(){
    wp_register_script( 'custom_jquery', plugins_url('/js/jquery-1.9.1.js', __FILE__), array('jquery'), '2.5.1' );            

    wp_register_style( 'new_style', plugins_url('/css/style.css', __FILE__), false, '1.0.0', 'all');

    wp_register_style( 'custom_jquery2', plugins_url('/js/jquery.fontSizer.js', __FILE__), false, '1.0.0', 'all');
    
    

}
 
// use the registered jquery and style above
add_action('wp_enqueue_scripts', 'enqueue_style');
function enqueue_style(){

    wp_enqueue_script('custom_jquery');
           
    wp_enqueue_style( 'new_style' );    

    wp_enqueue_script('custom_jquery2');
}


global $jal_db_version;
 $jal_db_version = '1.0';

function tablas_install() {
global $wpdb;
  global $jal_db_version;

  
  //$table_name = $wpdb->prefix . 'usuarios';
  $table_name = 'zuaru_' . 'chat';
  
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE $table_name (
    chat_id int(11) NOT NULL AUTO_INCREMENT ,
    chat_tipo varchar(50) NOT NULL ,
    chat_fecha varchar(50) NOT NULL ,
    chat_user varchar(50) NOT NULL ,
    status varchar(50) NOT NULL ,
   PRIMARY KEY ( `chat_id` )
  ) $charset_collate;";

  require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
  dbDelta( $sql );

  

  $table_name = 'zuaru_' . 'mensajes';
  
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE $table_name (
    msj_id int(11) NOT NULL AUTO_INCREMENT ,
    chat_id int(11) NOT NULL,
    msj_texto varchar(50) NOT NULL ,
    msj_user varchar(50) NOT NULL , 
    para varchar(50) NOT NULL ,
    msj_rem int(11) NOT NULL,
    msj_des int(11) NOT NULL, 
    time datetime NOT NULL,
    status varchar(50) NOT NULL ,
   PRIMARY KEY ( `msj_id` )
  ) $charset_collate;";



 require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
  dbDelta( $sql );



  $table_name = 'zuaru_' . 'chatfb';  
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE $table_name (
    id int(11) NOT NULL AUTO_INCREMENT ,
    sender varchar(50) NOT NULL ,
    reciever varchar(50) NOT NULL , 
    msg varchar(50) NOT NULL , 
    time datetime NOT NULL,
    status int(11) NOT NULL,
   PRIMARY KEY ( `id` )
  ) $charset_collate;";


 require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
  dbDelta( $sql );



  $table_name = 'zuaru_' . 'salas';  
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE $table_name (
    id int(11) NOT NULL AUTO_INCREMENT ,
    nombre varchar(50) NOT NULL ,
    frase varchar(50) NOT NULL ,     
   PRIMARY KEY ( `id` )
  ) $charset_collate;";


 require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
  dbDelta( $sql );


   
  add_option( 'jal_db_version', $jal_db_version );
}

register_activation_hook( __FILE__, 'tablas_install' );
    

function anuncios_shortcode( $atts ) {
$wp_query = new WP_Query(array('post_type' => 'Anuncios',
'paged' => $paged,
'posts_per_page' => 30,
'orderby' => 'title',
'order' => 'ASC')
);



if (isset($_SESSION['invitado'])) {

$invitado = $_SESSION['invitado'];

}else{

//generador usuario invitado
$valorin = rand(1,999);
$invitado = "Guest_".$valorin;
$_SESSION['invitado'] = $invitado;
//setcookie("invitado", $invitado, time()+3600);

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




function popitup(url) {
  newwindow=window.open(url,'popup','height=520,width=484,top=100, left=400');
  if (window.focus) {newwindow.focus()}
  return false;
}
function popitup2(url) {
  newwindow=window.open(url,'popup2','height=110,width=310,top=100, left=400');
  if (window.focus) {newwindow.focus()}
  return false;
}
function popitup3(url) {
  newwindow=window.open(url,'popup3','height=410,width=564,top=100,status=no,directories=no,menubar=no,toolbar=no,scrollbars=no,location=no,resizable=no,titlebar=no, left=400');
  if (window.focus) {newwindow.focus()}
  return false;
}

function cambio(valorsel){
    

     // $("#parasel option[value="+ valorsel +"]").attr("selected",true);

         /* 
         indice = document.frm_chat.parasel.selectedIndex= 3;     
         valor = document.frm_chat.parasel.options[indice].value;
         document.getElementById("texto_chat").focus(); 
         para = valor;   
         */  


         document.getElementById('parasel').selectedIndex = valorsel;
         indice = document.getElementById('parasel').selectedIndex;
         //valor = document.frm_chat.parasel.options[indice].value;
         valor = document.getElementById('parasel').value;
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


var id_usuario = 0;



  function actualiza(id){
    
      

    $.ajax({
      url:'../wp-content/plugins/sala-de-chat/chat.class.php',
      type:'POST',
      data:'get_all_msg=true&user=' + id,
      success:function(data){
        //$("#jd-chat").html(data);

        $("#jd-chat").find(".jd-user:first .jd-body").html("<span class='me'> " + data + "</span>");
        $(".jd-body").animate({ scrollTop: $('.jd-body')[0].scrollHeight}, 0);

      }
    }); 


  }



function llamapopup(){



$(document).ready(function() {



          $.ajax({
            async:  true,
            type: "POST",
            url: '<?php echo $pluing_url."/checkmensajes.php"; ?>',  
            data: "",
            dataType:"html",
            success: function(data)
            {               
             
             if (data>0){                

              $('#popupreceptor').fadeIn('slow');
              $('.popup-overlay').fadeIn('slow');
              $('.popup-overlay').height($(window).height()); 
              

              return false;
                             
            }

            }

            }); 

});


}



var timeoutId = setTimeout("llamapopup()",2000);
//setInterval("llamapopup()",1000);

param = 0;

function cargar(x) 
{ 

param = x;
if (param==1){
$("#confirm").html("");
}

    $(document).ready(function() {   

                
            $.ajax({
            async:  true,
            type: "POST",
            url: '<?php echo $pluing_url."/checkmensajes.php"; ?>',
            data: "",
            dataType:"html",
            success: function(data)
            {
                                       
              $('#msj').html("("+data+")"); 

            }
            });

            $("#texto").load('<?php echo $pluing_url."/cargar.php";?>', {mostrar:param},  function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#texto").html(msg + xhr.status + " " + xhr.statusText);
               } 
            });
                 
});

  
} 
   
setInterval("cargar(param)",1000);


function chatear()
{ 

 
 texto_chat = document.getElementById('texto_chat2').value;
 chat_user = document.getElementById('chat_user').value;
 document.getElementById('texto_chat2').value = "";


$(document).ready(function() {
          
        $("#texto").load('<?php echo $pluing_url."/chatgeneral.php";?>', {mostrar:param,texto:texto_chat,chat_user:chat_user,para:para}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#texto").html(msg + xhr.status + " " + xhr.statusText);
              }                 
        });

});


cargar(param);

}  
   

function borrar(id){

  $(document).ready(function() { 
 
 chat_id = id;

 
         $("#mensajespriv").load('<?php echo $pluing_url."/borrar.php"; ?>',{chat_id:chat_id},  function(response, status, xhr) {;
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#mensajespriv").html(msg + xhr.status + " " + xhr.statusText);
              }


            });

   });

}


function cargarpriv(des){
if(typeof(des) != "undefined"){ 
document.getElementById('chat_des').value = des;
}
chat_des = document.getElementById('chat_des').value;
chat_rem = document.getElementById('chat_rem').value;

$(document).ready(function() {



$("#mensajespriv").load('<?php echo $pluing_url."/cargarpriv.php";?>', {chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#mensajespriv").html(msg + xhr.status + " " + xhr.statusText);
               } 
      });


  });

        
}


setInterval("cargarpriv()",1000);


function chatearpriv() 
{ 
 
 texto_chat = document.getElementById('texto_chat').value;
 chat_user = document.getElementById('chat_user').value;
 chat_des = document.getElementById('chat_des').value;
 chat_rem = document.getElementById('chat_rem').value;
 document.getElementById('texto_chat').value = "";

 $(document).ready(function() { 

        
             $("#mensajespriv").load('<?php echo plugins_url( "chatpriv.php", __FILE__ );?>', {texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#mensajespriv").html(msg + xhr.status + " " + xhr.statusText);
              }else{
                $("#mensajespriv").animate({scrollTop: $("#mensajespriv")[0].scrollHeight});               
              }
  
            });
                 
});

    
}  



function cargarpriv2(){

chat_des = document.getElementById('chat_des').value;
chat_rem = document.getElementById('chat_rem').value;

$(document).ready(function() {


$("#textopriv").load('<?php echo $pluing_url."/cargarpriv.php";?>', {chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textopriv").html(msg + xhr.status + " " + xhr.statusText);
               } 
      });

 });
      
}

setInterval("cargarpriv2()",1000);

function chatearpriv2() 
{ 
 
 texto_chat = document.getElementById('texto_chat1').value;
 chat_user = document.getElementById('chat_user').value;
 chat_des = document.getElementById('chat_des').value;
 chat_rem = document.getElementById('chat_rem').value;
 document.getElementById('texto_chat1').value = "";


 $(document).ready(function() { 

        
             $("#textopriv").load('<?php echo plugins_url( "chatpriv.php", __FILE__ );?>', {texto:texto_chat,chat_user:chat_user,chat_rem:chat_rem,chat_des:chat_des}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#textopriv").html(msg + xhr.status + " " + xhr.statusText);
              }else{                
               $("#textopriv").animate({scrollTop: $("#textopriv")[0].scrollHeight});
              }
  
            });
                        

});
        

}  


function checkConnection() {

    $(document).ready(function() {

      $.ajax({
        url: '<?php echo $pluing_url."/process.php";?>',
        async: false,
        data: {'tag' : 'connection'}
      })
      .fail(function() { document.getElementById('conexion').style.display = 'block'; })
      .done(function() { document.getElementById('conexion').style.display = 'none'; })

      });
      
 }


setInterval("checkConnection()",5000);

function paso(id){

document.getElementById('chat_des').value = id;

$("#priv").load('<?php echo $pluing_url."/checkname.php";?>', {id:id}, function(response, status, xhr) {
              if (status == "error") {
                var msg = "Error!, algo ha sucedido: ";
                $("#priv").html(msg + xhr.status + " " + xhr.statusText);
               } 
      });

}

</script> 


<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jd.css" />
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jquery-1.11.2.min.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?> /../../plugins/sala-de-chat/jd.js"></script>
 
<style type="text/css">

#popupemisor {
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1001;
}

#popupreceptor {
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1001;
}

#popupsmiley{
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1050;
}

#popupsalas{
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1050;
}

#popupacceso{
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1050;
}

.content-popup4 {
    margin:0px auto;
    margin-top:250px;
    position:relative;
    padding:50px;
    width:400px;
    min-height:200px;
    border-radius:4px;
    background-color:#FFFFFF;
    box-shadow: 0 2px 5px #666666;
}

.content-popup4 h2 {
    color:#48484B;
    border-bottom: 1px solid #48484B;
    margin-top: 0;
    padding-bottom: 4px;
}


.content-popup3 {
    margin:0px auto;
    margin-top:250px;
    position:relative;
    padding:10px;
    width:500px;
    min-height:300px;
    border-radius:4px;
    background-color:#FFFFFF;
    box-shadow: 0 2px 5px #666666;
}

.content-popup3 h2 {
    color:#48484B;
    border-bottom: 1px solid #48484B;
    margin-top: 0;
    padding-bottom: 4px;
}

.content-popup2 {
    margin:0px auto;
    margin-top:250px;
    position:relative;
    padding:10px;
    width:350px;
    min-height:80px;
    border-radius:4px;
    background-color:#FFFFFF;
    box-shadow: 0 2px 5px #666666;
}

.content-popup2 h2 {
    color:#48484B;
    border-bottom: 1px solid #48484B;
    margin-top: 0;
    padding-bottom: 4px;
}

.content-popup {
    margin:0px auto;
    margin-top:120px;
    position:relative;
    padding:10px;
    width:550px;
    min-height:250px;
    border-radius:4px;
    background-color:#FFFFFF;
    box-shadow: 0 2px 5px #666666;
}

.content-popup h2 {
    color:#48484B;
    border-bottom: 1px solid #48484B;
    margin-top: 0;
    padding-bottom: 4px;
}

.popup-overlay {
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: 999;
    display:none;
    background-color: #777777;
    cursor: pointer;
    opacity: 0.7;
}

.close, .close2 , .close3, .close4, .close5 {
    position: absolute;
    right: 15px;
}  

</style>

<script type="text/javascript">
$(document).ready(function(){

$('#md0,#md1,#md2,#md3,#md4,#md5,#md6,#md7,#md8,#md9,#md10,#md11,#md12,#md13,#md14,#md15,#md16,#md17,#md18,#md19,#md20').click(function(){
        $("#textopriv").html('');
        $("#priv").html('');
        $('#popupemisor').fadeIn('slow');        
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
});

$('#close5').click(function(){
        $('#popupacceso').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
 });
$('#close4').click(function(){
        $('#popupsalas').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
 });

$('#close3').click(function(){
        $('#popupsmiley').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
 });

 $('#close2').click(function(){
        $('#popupemisor').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
 });


$('#acceder').click(function(){
        $('#popupacceso').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

  $('#open').click(function(){
        $('#popupreceptor').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

   $('#opensmiley0').click(function(){
        id = 3;        
        $('#popupsmiley').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

   $('#opensmiley1').click(function(){
        id = 1;             
        $('#popupsmiley').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

   $('#opensmiley2').click(function(){
        id = 2;            
        $('#popupsmiley').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });
    
   $('#salas').click(function(){                   
        $('#popupsalas').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

    $('#close').click(function(){
        $('#popupreceptor').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
    });

});
</script>



<style type="text/css">
    .step_box {
        background-color : #ffffff;
        border: 1.0px solid rgb(204, 204, 204);
        border-radius: 0.2em; 
    }
    .step_box:hover, #selected_step_box, .QuickStartLong:hover {
        background: #81DAF5;
    }
    .selected {
        background-color : #81DAF5;
    }
    </style>
    <script type="text/javascript">
    $( document ).ready( function(){
        $('.step_wrapper').on('click','.step_box',function () {
             $('.step_box').removeClass('selected');
             $(this).addClass('selected')
        });
    });

    function ico(codigo)
     {         
       if (id == 1){
       document.getElementById("texto_chat").value = document.getElementById("texto_chat").value + " " + codigo;       
       }
       if (id == 2){ 
       document.getElementById("texto_chat1").value = document.getElementById("texto_chat1").value + " " + codigo;
       }
       if (id == 3){
       document.getElementById("texto_chat2").value = document.getElementById("texto_chat2").value + " " + codigo;  
       }
      // document.frm_chat.texto_chat.value = document.frm_chat.texto_chat.value + " " + codigo;
       top.close();
  
     }
    </script>

           

</head>
<body>

<?php
  if ( is_user_logged_in() ) {
    $cu = wp_get_current_user();    
?>

                <div class="aa_logout"> 
                    
                    <?php 
                        _e( 'Bienvenido ', 'AA' ); 
                        echo "<strong>".$cu->user_login."</strong>";
                    ?>
                    
                    </br>                    
                    

                </div>
                <a id="wp-submit" href="<?php echo wp_logout_url( 'http://test.zuaru.com/chat/' ); ?>" title="Salir">
                    <?php _e( 'Salir', 'AA' ); ?>
                </a>

<?php
    }else{
?>
<a id="acceder" href="#">Acceder</a>


<?php } ?>



<?php

echo '<div id="popupacceso" style="display:none;">
    <div class="content-popup4">
        <div class="close5"><a href="#" id="close5"><img src="'. get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/close.png"/></a></div>
        <div>';

?>

<!-- section -->
    <section class="aa_loginForm">
        <?php 
            global $user_login;
            // In case of a login error.
            if ( isset( $_GET['login'] ) && $_GET['login'] == 'failed' ) : ?>
                  <div class="aa_error">
                    <p><?php _e( 'FAILED: Try again!', 'AA' ); ?></p>
                  </div>
            <?php 
                endif;
            // If user is already logged in.
            if ( is_user_logged_in() ) : ?>

                <div class="aa_logout"> 
                    
                    <?php 
                        _e( 'Hello', 'AA' ); 
                        echo $user_login; 
                    ?>
                    
                    </br>
                    
                    <?php _e( 'You are already logged in.', 'AA' ); ?>

                </div>

                <a id="wp-submit" href="<?php echo wp_logout_url(); ?>" title="Logout">
                    <?php _e( 'Salir', 'AA' ); ?>
                </a>

            <?php 
                // If user is not logged in.
                else: 
                
                    // Login form arguments.
                    $args = array(
                        'echo'           => true,
                        'redirect'       => home_url( ), 
                        'form_id'        => 'loginform',
                        'label_username' => __( 'Username' ),
                        'label_password' => __( 'Password' ),
                        'label_remember' => __( 'Remember Me' ),
                        'label_log_in'   => __( 'Log In' ),
                        'id_username'    => 'user_login',
                        'id_password'    => 'user_pass',
                        'id_remember'    => 'rememberme',
                        'id_submit'      => 'wp-submit',
                        'remember'       => true,
                        'value_username' => NULL,
                        'value_remember' => true
                    ); 
                    
                    // Calling the login form.
                    wp_login_form( $args );
                endif;
        ?> 

  </section>
  <!-- /section -->


    </div>
  </div>
</div>




<?php

echo '<div id="popupsmiley" style="display:none;">
    <div class="content-popup2">
        <div class="close3"><a href="#" id="close3"><img src="'. get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/close.png"/></a></div>
        <div>';
?>

<?php

$id = $_GET['id'];

?>
<html>

<head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
      <title>Agregar Smiley</title>

</head>


<?php


 $images_web = array ( 
 0 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/angry.gif")),
 1 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/bigsurprise.gif")),
 2 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/blank.gif")),
 3 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/cheese.gif")),
 4 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/confused.gif")),
 5 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/downer.gif")),
 6 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/embarrassed.gif")),
 7 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/exclaim.gif")),
 8 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/grin.gif")),
 9 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/grrr.gif")),
 10 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/gulp.gif")),
 11 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/hmm.gif")),
 12 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/hmm-2.gif")),
 13 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/kiss.gif")),
 14 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/lol.gif")),
 15 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/longface.gif")),
 16 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/mad.gif")),
 17 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/ohh.gif")),
 18 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/ohoh.gif")),
 19 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/question.gif")),
 20 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/raspberry.gif")),
 21 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/rolleyes.gif")),
 22 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_cheese.gif")),
 23 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_grin.gif")),
 24 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_hmm.gif")),
 25 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_mad.gif")),
 26 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_mad-2.gif")),
 27 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_smile.gif")),
 28 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_smirk.gif")),
 29 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shock.gif")),
 30 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shuteye.gif")),
 31 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/sick.gif")),
 32 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/smile.gif")),
 33 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/smirk.gif")),
 34 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/snake.gif")),
 35 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/surprise.gif")),
 36 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_laugh.gif")),
 37 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_rolleye.gif")),
 38 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_wink.gif")),
 39 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/vampire.gif")),
 40 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/wink.gif")), 
 41 => base64_encode(file_get_contents("http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/zip.gif")), 
 );    
?>
   

<a target="popup" style="cursor:pointer" onClick="ico(':angry:')"><img src="data:image/gif;base64,<?php echo $images_web [0];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':bigsurprise:')"><img src="data:image/gif;base64,<?php echo $images_web [1];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':blank:')"><img src="data:image/gif;base64,<?php echo $images_web [2];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':cheese:')"><img src="data:image/gif;base64,<?php echo $images_web [3];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':confused:')"><img src="data:image/gif;base64,<?php echo $images_web [4];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':downer:')"><img src="data:image/gif;base64,<?php echo $images_web [5];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':embarrassed:')"><img src="data:image/gif;base64,<?php echo $images_web [6];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':exclaim:')"><img src="data:image/gif;base64,<?php echo $images_web [7];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':grin:')"><img src="data:image/gif;base64,<?php echo $images_web [8];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':grrr:')"><img src="data:image/gif;base64,<?php echo $images_web [9];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':gulp:')"><img src="data:image/gif;base64,<?php echo $images_web [10];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':hmm:')"><img src="data:image/gif;base64,<?php echo $images_web [11];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':hmm-2:')"><img src="data:image/gif;base64,<?php echo $images_web [12];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':kiss:')"><img src="data:image/gif;base64,<?php echo $images_web [13];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':lol:')"><img src="data:image/gif;base64,<?php echo $images_web [14];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':longface:')"><img src="data:image/gif;base64,<?php echo $images_web [15];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':mad:')"><img src="data:image/gif;base64,<?php echo $images_web [16];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':ohh:')"><img src="data:image/gif;base64,<?php echo $images_web [17];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':ohoh:')"><img src="data:image/gif;base64,<?php echo $images_web [18];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':question:')"><img src="data:image/gif;base64,<?php echo $images_web [19];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':raspberry:')"><img src="data:image/gif;base64,<?php echo $images_web [20];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':rolleyes:')"><img src="data:image/gif;base64,<?php echo $images_web [21];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_cheese:')"><img src="data:image/gif;base64,<?php echo $images_web [22];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_grin:')"><img src="data:image/gif;base64,<?php echo $images_web [23];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_hmm:')"><img src="data:image/gif;base64,<?php echo $images_web [24];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_mad:')"><img src="data:image/gif;base64,<?php echo $images_web [25];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_mad-2:')"><img src="data:image/gif;base64,<?php echo $images_web [26];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_smile:')"><img src="data:image/gif;base64,<?php echo $images_web [27];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shade_smirk:')"><img src="data:image/gif;base64,<?php echo $images_web [28];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shock:')"><img src="data:image/gif;base64,<?php echo $images_web [29];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':shuteye:')"><img src="data:image/gif;base64,<?php echo $images_web [30];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':sick:')"><img src="data:image/gif;base64,<?php echo $images_web [31];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':smile:')"><img src="data:image/gif;base64,<?php echo $images_web [32];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':smirk:')"><img src="data:image/gif;base64,<?php echo $images_web [33];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':snake:')"><img src="data:image/gif;base64,<?php echo $images_web [34];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':surprise:')"><img src="data:image/gif;base64,<?php echo $images_web [35];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':tongue_laugh:')"><img src="data:image/gif;base64,<?php echo $images_web [36];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':tongue_rolleye:')"><img src="data:image/gif;base64,<?php echo $images_web [37];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':tongue_wink:')"><img src="data:image/gif;base64,<?php echo $images_web [38];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':vampire:')"><img src="data:image/gif;base64,<?php echo $images_web [39];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':wink:')"><img src="data:image/gif;base64,<?php echo $images_web [40];?>" /></a>
<a target="popup" style="cursor:pointer" onclick="ico(':zip:')"><img src="data:image/gif;base64,<?php echo $images_web [41];?>" /></a>


</html>


    </div>
  </div>
</div>





<div id="jd-chat">
  <div class="jd-online">
    <div class="jd-header">Usuarios</div>
    <div class="jd-body">

<?php


global $wpdb;

$mi_tabla = 'wp_users';
$query = "SELECT * FROM ".$mi_tabla;
$content = $wpdb->get_results( $query ) or die();


if ( count($content) > 0 ) {
    foreach ( $content as $row ) {
        
if (is_user_logged_in()){
 $cu = wp_get_current_user();
 $conectado = $cu->user_login;
}

if ($conectado == $row->user_login){

echo '<div class="jd-online_user"  id="'.$row->ID.'"><img src="'.get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/punto-verde.png">&nbsp;'.$row->display_name.'<i class="light">&#8226;</i> </div>';

}
else{

echo '<div class="jd-online_user"  id="'.$row->ID.'">'.$row->display_name.'<i class="light">&#8226;</i> </div>';

}

    }
}


?>
   
    </div>      
    <div class="jd-footer"><input id="search_chat" placeholder="Buscar"></div>
  </div>
  
</div>
<?php

if (is_user_logged_in()){ 
 $cu = wp_get_current_user(); 
 $id_conectado = $cu->ID;
}
  
  $_SESSION['JD_CURRUNT_USER']=$id_conectado;
  
 
?>
  

<form name="frm_chat" id="frm_chat" method="post" enctype="multipart/form-data" >

<div id="resultado"> 
  
<h1>Chat</h1>
<div id="conexion">No hay conexión a internet</div>
<div id="confirm">
<h5>Desea ver los mensajes de las últimas 24 horas? <input type="button" value="Confirmar" 
onClick="if(confirm('Quieres proceder?'))
cargar(1);
else cargar(0)"></h5>
</div>

<div id="texto" >

  

</div> 


</div>    
 

<div id="mensajes">
  <div id="usuar"><?php if (is_user_logged_in()){  $cu = wp_get_current_user(); echo "Bienvenido";}else{ echo  "Bienvenido";} ?></div>
  <div id="home"><a class="link" href="<?php  echo get_page_link( get_page_by_title( 'Chat' )->ID );  ?>"> Inicio </a></div>
  
<?php 
if (is_user_logged_in()){ 
?>

  <div id="mensa"><a class="link" id="open" href="#"> Privados </a><div id="msj"></div></div>  
  <div id="sala"><a class="link" id="salas" href="#"> Salas </a></div>
  <div id="salir"><a class="link" href="<?php echo plugins_url( 'logout.php', __FILE__ ); ?>"> Salir </a></div>

<?php
/*<?php echo get_page_link( get_page_by_title( 'Salas' )->ID ); ?>*/

}
?> 

  
</div>  


<div id="botones"> 
<label id="para">Para: 
<select name="parasel" id="parasel" onchange="selected();" >
 <?php 
$mi_tabla = 'wp_users';
$query = "SELECT * FROM ".$mi_tabla;
$content = $wpdb->get_results( $query ) or die(); 

echo '<option value="0">Todos los usuarios</option>';
if ( count($content) > 0 ) {
    foreach ( $content as $row ) {
        
echo '<option value="'.$row->ID.'"">'.$row->display_name.'</option>';

    }
} 
?>
    
</select>

</label>
  
  <?php 
  echo '&nbsp;&nbsp;&nbsp;<a id="opensmiley0" style="cursor: pointer"><img title="Agregar Smiley" src="'. get_stylesheet_directory_uri().'/../../plugins/sala-de-chat/images/emojs/smile.gif' .'" ></a>';
  //href="popupsmiley.php" onclick="return popitup2(\''. $pluing_url.'popupsmiley.php?id=3' .'\')"

  ?>

<br>

<label id="mensaje">Mensaje:<br> 
<input type="text" id="texto_chat2" name="texto_chat2" autocomplete="off"></label>&nbsp;&nbsp;
<input type="button" id="enviar" name="enviar" value="Enviar"  onclick="chatear()" > <br><br>
<label id="usuario">Usuario: <input type="text" id="chat_user" name="chat_user" value=<?php if (is_user_logged_in()){ $cu = wp_get_current_user(); echo $cu->user_login;} else{echo $_SESSION['invitado'];} ?> > </label>

<br>

</div> 
</form>

</body> 

<?php
 
}

add_shortcode( 'chat_zuaru', 'anuncios_shortcode' );

?>