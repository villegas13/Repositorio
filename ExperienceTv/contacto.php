<?php

/*

Template name: Pagina de Contacto

*/

?>

<?php

//Si se envía el formulario

if(isset($_POST['submitted'])) {


//Compruebe si el campo Captcha se rellena

//if(trim($_POST['checking']) !== '') {

$a = 1;
$b = 1;
if ( $a !== $b ){

$captchaError = true;

} else {


//Asegúrese de que el nombre no está vacío

if(trim($_POST['contactName']) === '') {

$nameError = 'Se le olvidó introducir su nombre.';

$hasError = true;

} else {

$name = trim($_POST['contactName']);

}


//Asegúrese de que el correo no está vacío

if(trim($_POST['email']) === '') {

$emailError = 'Se le olvidó introducir su correo.';

$hasError = true;

} else if (!eregi("^[A-Z0-9._%-]+@[A-Z0-9._%-]+\.[A-Z]{2,4}$", trim($_POST['email']))) {

$emailError = 'Poner un correo válido';

$hasError = true;

} else {

$email = trim($_POST['email']);

}

//Asegúrese de que el servicio no está vacío

if(trim($_POST['contactServicio']) === '') {

$servicioError = 'Se le olvidó introducir su servicio.';

$hasError = true;

} else {

$servicio = trim($_POST['contactServicio']);

}


//Asegúrese de que el mensaje no está vacío

if(trim($_POST['comments']) === '') {

$commentError = 'Se le olvidó introducir su mensaje.';

$hasError = true;

} else {

if(function_exists('stripslashes')) {

$comments = stripslashes(trim($_POST['comments']));

} else {

$comments = trim($_POST['comments']);

}

}


//Si no hay error, enviar el correo electrónico

if(!isset($hasError)) {


$emailTo = 'info@roka.es';//ponga aqui su email

$subject = 'Formulario de Contacto '.$name;

$sendCopy = trim($_POST['sendCopy']);

$body = "Nombre: $name \n\nEmail: $email \n\nServicio: $servicio \n\nMensaje: $comments";

$headers = 'Asunto: Experience Tv <'.$emailTo.'>' . "\r\n" . 'contestar: ' . $email;


mail($emailTo, $subject, $body, $headers);


if($sendCopy == true) {

$subject = 'Usted enviará por correo electrónico Su nombre';

$headers = 'From: Su nombre <noreply@somedomain.com>';

mail($email, $subject, $body, $headers);

}


$emailSent = true;


}

}

} ?>



<?php get_header(); ?>



<section id="contenedor6">
  <div id="contactleft">
   <span id="titulo6">Contacto</span>
   <img style="width: 100%;padding:25px 0 25px 0" src="http://experienceweb.roka.es/wp-content/themes/mitema/images/Contacto-02.png">
  </div>
  <div id="contactright"> 



<?php if(isset($emailSent) && $emailSent == true) { ?>


<div class="thanks">

<h1>Gracias, <?=$name;?></h1>

<p>Tu email ha sido enviado con éxito.</p>

</div>


<?php } else { ?>


<?php if (have_posts()) : ?>


<?php while (have_posts()) : the_post(); ?>

<h1></h1>

<?php the_content(); ?>


<?php if(isset($hasError) || isset($captchaError)) { ?>

<p class="error">Hubo un error al enviar el formulario.<p>

<?php } ?>


<form action="<?php the_permalink(); ?>" id="contactForm" method="post">


<ol class="forms">

<li><label for="contactName">Su nombre</label>

<input type="text" name="contactName" id="contactName" value="<?php if(isset($_POST['contactName'])) echo $_POST['contactName'];?>" class="requiredField" />

<?php if($nameError != '') { ?>

<span class="error"><?=$nameError;?></span>

<?php } ?>

</li>


<li><label for="email">Su Email</label>

<input type="text" name="email" id="email" value="<?php if(isset($_POST['email'])) echo $_POST['email'];?>" class="requiredField email" />

<?php if($emailError != '') { ?>

<span class="error"><?=$emailError;?></span>

<?php } ?>

</li>


<li><label for="contactServicio">Servicio</label>

<input type="text" name="contactServicio" id="contactServicio" value="<?php if(isset($_POST['contactServicio'])) echo $_POST['contactServicio'];?>" class="requiredField" />

<?php if($servicioError != '') { ?>

<span class="error"><?=$servicioError;?></span>

<?php } ?>

</li>


<li class="textarea"><label for="commentsText">Mensaje</label>

<textarea name="comments" id="commentsText" rows="20" cols="30" class="requiredField"><?php if(isset($_POST['comments'])) { if(function_exists('stripslashes')) { echo stripslashes($_POST['comments']); } else { echo $_POST['comments']; } } ?></textarea>

<?php if($commentError != '') { ?>

<span class="error"><?=$commentError;?></span>

<?php } ?>

</li>

<li class="inline"><input type="checkbox" name="sendCopy" id="sendCopy" value="true"<?php if(isset($_POST['sendCopy']) && $_POST['sendCopy'] == true) echo ' checked="checked"'; ?> /><label for="sendCopy">Enviar una copia de este correo electrónico a ti mismo</label></li>
<!--
<li class="screenReader"><label for="checking" class="screenReader">Si desea enviar este formulario, no introduzca nada en este campo</label><input type="text" name="checking" id="checking" class="screenReader" value="<?php 
/*
 if(isset($_POST['checking'])) echo $_POST['checking'];
*/
 ?>" /></li>
-->

<li class="buttons"><input type="hidden" name="submitted" id="submitted" value="true" /><br><br><button type="submit">ENVIAR &raquo;</button></li>

</ol>

</form>


<?php endwhile; ?>

<?php endif; ?>

<?php } ?>

  </div>
</section>

<?php get_footer(); ?>