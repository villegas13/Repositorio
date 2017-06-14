<?php

$id = $_GET['id'];

?>
<html>

<head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
      <title>Agregar Smiley</title>

</head>
<script type="text/javascript">
function ico(codigo)
      {
                         
         id = <?php echo $id; ?>    
         if (id == 1){
       opener.document.getElementById("texto_chat1").value = opener.document.getElementById("texto_chat1").value + " " + codigo;
       }else if (id == 2){
       opener.document.getElementById("texto_chat").value = opener.document.getElementById("texto_chat").value + " " + codigo;
       }else if (id == 3){
       opener.document.getElementById("texto_chat2").value = opener.document.getElementById("texto_chat2").value + " " + codigo;    
       }    
      // document.frm_chat.texto_chat.value = document.frm_chat.texto_chat.value + " " + codigo;
       top.close();

      }
</script>

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
   

<a target="popup" style="cursor:pointer" onclick="ico(':angry:')"><img src="data:image/gif;base64,<?php echo $images_web [0];?>" /></a>
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

<?php
/*
echo $_SERVER['REQUEST_URI'];
echo 'http://'.$_SERVER['HTTP_HOST'].'';
echo '<img src="http://'.$_SERVER['HTTP_HOST'].'/wp-content/plugins/sala-de-chat/images/emojs/bigsurprise.gif" >';
*/
//echo '<img src="http://test.zuaru.com/wp-content/plugins/sala-de-chat/images/emojs/angry.gif" >';
//<img src="http://". $_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/blank.gif"; >
//<img src="http://". $_SERVER['HTTP_HOST']."/wp-content/plugins/sala-de-chat/images/emojs/blank.gif"; >

/*

<img src="http://test.zuaru.com/wp-content/plugins/sala-de-chat/images/emojs/angry.gif" >

<img src="<?php echo get_stylesheet_directory(); ?>/../plugins/sala-de-chat/images/emojs/blank.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../plugins/sala-de-chat/images/emojs/cheese.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/confused.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/downer.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/embarrassed.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/exclaim.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/grin.gif" >
<img src="<?php echo get_stylesheet_directory(); ?>/../../plugins/sala-de-chat/images/emojs/grrr.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/emojs/gulp.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/emojs/hmm.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/plugins/sala-de-chat/images/emojs/hmm-2.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/plugins/sala-de-chat/images/emojs/kiss.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/lol.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/longface.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/mad.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/ohh.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/ohoh.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/question.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/raspberry.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/rolleyes.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_cheese.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_grin.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_hmm.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_mad.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_mad-2.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_smile.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shade_smirk.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shock.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/shuteye.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/sick.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/smile.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/smirk.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/snake.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/surprise.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/tongue_laugh.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/tongue_rolleye.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/tongue_wink.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/vampire.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/wink.gif" >
<img src="<?php echo get_stylesheet_directory_uri(); ?>/../../plugins/sala-de-chat/images/emojs/zip.gif" >
*/

?>


</html>