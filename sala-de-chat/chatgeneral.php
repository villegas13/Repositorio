<?php 



require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-config.php' );



function smileys($texto){
    $texto=str_replace(":angry:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/angry.gif\">",$texto);
    $texto=str_replace(":bigsurprise:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/bigsurprise.gif\">",$texto);
    $texto=str_replace(":cheese:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/cheese.gif\">",$texto);
    $texto=str_replace(":confused:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/confused.gif\">",$texto);
    $texto=str_replace(":downer:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/downer.gif\">",$texto);
    $texto=str_replace(":embarrassed:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/embarrassed.gif\">",$texto);
    $texto=str_replace(":exclaim:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/exclaim.gif\">",$texto);
    $texto=str_replace(":grin:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/grin.gif\">",$texto);
    $texto=str_replace(":grrr:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/grrr.gif\">",$texto);
    $texto=str_replace(":gulp:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/gulp.gif\">",$texto);
    $texto=str_replace(":hmm:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/hmm.gif\">",$texto);
    $texto=str_replace(":hmm-2:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/hmm-2.gif\">",$texto);
    $texto=str_replace(":kiss:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/kiss.gif\">",$texto);
    $texto=str_replace(":lol:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/lol.gif\">",$texto);
    $texto=str_replace(":longface:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/longface.gif\">",$texto);
    $texto=str_replace(":mad:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/mad.gif\">",$texto);
    $texto=str_replace(":ohh:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/ohh.gif\">",$texto);
    $texto=str_replace(":ohoh:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/ohoh.gif\">",$texto);
    $texto=str_replace(":question:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/question.gif\">",$texto);
$texto=str_replace(":raspberry:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/raspberry.gif\">",$texto);
    $texto=str_replace(":rolleyes:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/rolleyes.gif\">",$texto);
$texto=str_replace(":shade_cheese:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_cheese.gif\">",$texto);
    $texto=str_replace(":shade_hmm:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_hmm.gif\">",$texto);
    $texto=str_replace(":shade_mad:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_mad.gif\">",$texto);
    $texto=str_replace(":shade_mad-2:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_mad-2.gif\">",$texto);
    $texto=str_replace(":shade_smile:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_smile.gif\">",$texto);
    $texto=str_replace(":shade_smirk:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shade_smirk.gif\">",$texto);
    $texto=str_replace(":shock:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shock.gif\">",$texto);
    $texto=str_replace(":shuteye:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/shuteye.gif\">",$texto);
    $texto=str_replace(":sick:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/sick.gif\">",$texto);
    $texto=str_replace(":smile:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/smile.gif\">",$texto);
    $texto=str_replace(":smirk:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/smirk.gif\">",$texto);
    $texto=str_replace(":snake:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/snake.gif\">",$texto);
    $texto=str_replace(":surprise:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/surprise.gif\">",$texto);
    $texto=str_replace(":tongue_laugh:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_laugh.gif\">",$texto);
    $texto=str_replace(":tongue_rolleye:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_rolleye.gif\">",$texto);
    $texto=str_replace(":tongue_wink:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/tongue_wink.gif\">",$texto);
    $texto=str_replace(":vampire:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/vampire.gif\">",$texto);
    $texto=str_replace(":wink:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/wink.gif\">",$texto);
    $texto=str_replace(":zip:","<img src=\"http://".$_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/zip.gif\">",$texto);

    return $texto; 

}


global $wpdb;

$mi_tabla = 'zuaru_mensajes';

$para = $_POST['para'];
$conectado = $_POST['chat_user'];
$mostrar = $_POST['mostrar'];
$chat_id = 1;
$msj_rem = 0;
$msj_des = 0;
$date   = date("Y-m-d H:i:s");
$status = "nl";


$query="INSERT INTO zuaru_mensajes(chat_id,msj_texto,msj_user,para,msj_rem,msj_des,time,status) values ('".$chat_id."', '".$_POST['texto']."','".$_POST['chat_user']."','".$para."','".$msj_rem."','".$msj_des."', '".$date."', '".$status."')"; 
$content = $wpdb->get_results( $query ) or die(); 

if ($mostrar == 1){
$fecha = date('Y-m-d H:i:s');
$fecha = new DateTime($fecha);
$fecha->modify('-24 hours');
$fecha = date_format($fecha,"Y-m-d H:i:s");
}else{
$fecha = date('Y-m-d H:i:s');
$fecha = new DateTime($fecha);
$fecha->modify('-24 hours');
$fecha = date_format($fecha,"Y-m-d H:i:s");
}

/*
if ($para==0){

$query = "SELECT * FROM ".$mi_tabla." WHERE chat_id = 1 and time > '$fecha'" ;
$content = $wpdb->get_results( $query ) or die();

if ( count($content) > 0 ) {
    foreach ( $content as $row ) {
        
        if ($row->para <> 0){     
            $query = "SELECT * FROM ".$mi_tabla;
            $content = $wpdb->get_results( $query ) or die(); 
        }

    
  echo "<div class='chat'><span class='user'>".ucfirst($row->chat_user). ":</span> ".$row->chat_texto."</div>";  
         
     
    }
}


}else{


$query = "SELECT * FROM ".$mi_tabla." WHERE chat_id = 1 and time > '$fecha'" ;
$content = $wpdb->get_results( $query ) or die();


if ( count($content) > 0 ) {
    foreach ( $content as $row ) { 
        
        if ($row->para <> 0){     
            
            $query2 = "SELECT * FROM wp_users WHERE ID = '".$row->para."' ";
            $content2 = $wpdb->get_results( $query2 ) or die();


            if ( count($content2) > 0 ) {
                foreach ( $content2 as $row2 ) {

                $id_receptor =  $row2->ID;    
                $receptor = $row2->display_name; 

                }
            }

            
                                
             $emisor = $row->msj_user;
             $texto = $row->msj_texto;
          
              
            
            $query3 = "SELECT * FROM wp_users WHERE user_login = '".$emisor."' ";
            $content3 = $wpdb->get_results( $query3 ) or die();


            if ( count($content3) > 0 ) {
                foreach ( $content3 as $row3 ) {
                        
                 $id_emisor = $row3->ID;

                }
            }

           
            if (is_user_logged_in()){ 
             $cu = wp_get_current_user();
             $id_conectado = $cu->ID;  
            }

            if ( $id_conectado == $id_emisor || $id_conectado ==  $id_receptor){

                $texto = smileys($texto);

                $date = date_create($row->time);
                $time = date_format($date, 'g:i A');     
                

             echo "<div class='chat'><span class='user'>"."[".$time."] ".ucfirst($emisor). "</span> > <span class='user'>".ucfirst($receptor)."</span>: ".$texto."</div>";  

               

            }


             }else{

             $emisor = $row->msj_user;
             $texto = $row->msj_texto;         
          

            $date = date_create($row->time);
            $time = date_format($date, 'g:i A'); 

            $texto = smileys($texto);
                  

            echo "<div class='chat'><span class='user'>"."[".$time."] ".ucfirst($emisor).":</span> ".$texto."</div>";  
              
            


            }
    }
}

}


*/




?> 