<?php get_header(); ?>
 
 
  <section id="main"    >
 

<!--<section id="efectoprinc" >
			<article>
				<div class="geekhome" align="right">
				texto texto

				</div>
				
			</article>
		</section>-->
        

<?php /*?> <div  id="imgprinobj" style="width:100%; margin:0px 0 10px 0; "> 

<?php 
    echo do_shortcode("[metaslider id=62]"); 
?>
 
 </div><?php */?>
 

    


 <div id="imgprinobjrespons" 
  class="imgprinobjrespons" >

        
            
            
            <img id="imgprincipal" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/principal.jpg" border="0"  usemap="#image-maps" alt="" />
<map name="image-maps" id="image-maps">
<area  alt="" title="" href="http://www.facebook.com" shape="rect" coords="1510,988,1575,1040"  target="_blank"     />
<area  alt="" title="" href="http://www.twitter.com" shape="rect" coords="1581,988,1645,1040"  target="_blank"     />
<area  alt="" title="" href="http://www.google.co.ve" shape="rect" coords="1653,988,1712,1040"  target="_blank"     />
<area  alt="" title="" href="http://www.pin.com" shape="rect" coords="1722,988,1783,1040"  target="_blank"     />
<area  alt="" title="" href="http://www.linkedin.com" shape="rect" coords="1790,988,1853,1040"  target="_blank"     />

</map>
			
				 <?php
// retrieve one post with an ID of 24
query_posts( 'cat=27' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();


the_content( );
	
endwhile;
?>

	
				


 </div>
   
  <div id="msjinicio" align="center">
  <div id="msjiniciotxt" align="center">
  
    <div id="titulosolucion" align="center" style="width:100%; font-family:'Gotham Light'; font-size:xx-large">SU<strong>SOLUCIÓN</strong>GRAFICA</div>
  
 <?php
// retrieve one post with an ID of 24
query_posts( 'cat=3' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
remove_filter('the_content', 'wpautop');
the_content( );
endwhile;
?>
 </div>
 </div>
 <a href="<?=get_permalink( get_page_by_title('Presupuesto') );?>">
 <div id="imgpresupuestoobj" align="center" style="width:100%; margin:0; "> 
 <?php 
    echo do_shortcode("[metaslider id=63]"); 
?>
 </div></a>
  <section id="efecto1" data-id="d1" data-type="parallax_section" data-speed="10">
			<article>
				<div class="geekhome" align="right">
				<?php
				// retrieve one post with an ID of 24
				query_posts( 'cat=25' );
				
				// set $more to 0 in order to only get the first part of the post
				global $more;
				$more = 0;
				
				// the Loop
				while (have_posts()) : the_post();
				//	the_title();
					the_content( );
				endwhile;
				?>

				</div>
				
			</article>
		</section>

   <div id="msjnosotros" align="center" >
  <div id="msjnosotrostxt" >
  <div id="titulosnosotros" align="center" style="width:100%; font-family:'Gotham Light'; font-size:xx-large"><strong>NOSOTROS</strong></div>
  <?php
// retrieve one post with an ID of 24
query_posts( 'cat=4' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;
?>
  
  </div>
  </div>
  
    <section id="efecto2" data-id="d2" data-type="parallax_section" data-speed="10" >
			<article >
				<div class="geekhome" align="right">
				
                <?php
				// retrieve one post with an ID of 24
				query_posts( 'cat=26' );
				
				// set $more to 0 in order to only get the first part of the post
				global $more;
				$more = 0;
				
				// the Loop
				while (have_posts()) : the_post();
				//	the_title();
					the_content( );
				endwhile;
				?>
                
				</div>
				
			</article>
		</section>
  
  <div id="msjservicios" align="center">
  <div id="msjserviciostxt" align="center"  >

  <div id="tituloservicios" align="center" style="width:100%; font-family:'Gotham Light'; font-size:xx-large"><strong>SERVICIOS</strong></div>
  <table width="100%" id="tbl1"  border="0" cellspacing="0" cellpazdding="0" align="center">
  <tr>
    <th scope="col" align="center"  ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png" /> </th>
    <th scopie="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png" /></th>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:20%; vertical-align:top; " >
	<div id="txtmsj1">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=5' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:20%; vertical-align:top">
	<div id="txtmsj2">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
    </td>
    <td style="padding:2px 10px 10px 10px; width:20%; vertical-align:top">
    <div id="txtmsj3">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
    </td>
    <td style="padding:2px 10px 10px 10px; width:20%; vertical-align:top">
    <div id="txtmsj4">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
    </td>
    <td style="padding:2px 10px 10px 10px; width:20%; vertical-align:top">
    <div id="txtmsj5">
     <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=9' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
    </td>
  </tr>
  
</table>

<table width="100%" id="tbl2" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png" /></th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png" /></th>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:25%;vertical-align:top"><div id="txtmsj1">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=5' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:25%;vertical-align:top"><div id="txtmsj2">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:25%;vertical-align:top">  <div id="txtmsj3">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:25%;vertical-align:top"><div id="txtmsj4">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:25%;vertical-align:top"> <div id="txtmsj5">
     <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=9' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<table width="100%" id="tbl3" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png" /> </th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png" /> </th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png" /> </th>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:33%;vertical-align:top"><div id="txtmsj1">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=5' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:33%;vertical-align:top"><div id="txtmsj2">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:33%;vertical-align:top"> <div id="txtmsj3">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png" /> </td>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png" /> </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:33%;vertical-align:top">    <div id="txtmsj4">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
</td>
    <td style="padding:2px 10px 10px 10px; width:33%;vertical-align:top">    <div id="txtmsj5">
     <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=9' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div>
</td>
    <td>&nbsp;</td>
  </tr>
</table>

<table id="tbl4" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1-g.png'" width="64" height="61" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png'"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png" /> </th>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png" /> </th>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:50%;vertical-align:top"><div id="txtmsj1">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=5' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:50%;vertical-align:top"><div id="txtmsj2">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png" /> </td>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png" /> </td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:50%;vertical-align:top"><div id="txtmsj3">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td style="padding:2px 10px 10px 10px; width:50%;vertical-align:top">  <div id="txtmsj4">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png" /> </td>
    <td ></td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:50%;vertical-align:top"><div id="txtmsj5">
     <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=9' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
    <td>&nbsp;</td>
  </tr>
</table>

<table id="tbl5" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th scope="col" align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1-g.png'" width="64" height="61" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png'"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img1.png" /> </th>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:100%;vertical-align:top"><div id="txtmsj1">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=5' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2-g.png'" width="64" height="61" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png'"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img2.png" /> </td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:100%;vertical-align:top"><div id="txtmsj2">
	<?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=6' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img3.png" /> </td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:100%;vertical-align:top"> <div id="txtmsj3">
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=7' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png'" width="64" height="61"  src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img4.png" /> </td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:100%;vertical-align:top"> <div id="txtmsj4" >
    <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=8' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
  <tr>
    <td align="center" ><img onmouseover="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5-g.png'" onmouseout="this.src = 'http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png'" width="64" height="61" src="http://roka.es/roka/wp-content/themes/Roka%20Tema/images/img5.png" /> </td>
  </tr>
  <tr>
    <td style="padding:2px 10px 10px 10px; width:100%;vertical-align:top"><div id="txtmsj5">
     <?php
    

// retrieve one post with an ID of 24
query_posts( 'cat=9' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;


	
	?>
    </div></td>
  </tr>
</table>


  
  </div>
  </div>
  

  
  <div id="msjproductos" align="center" >
  <div id="msjproductostxt" >
    <div id="tituloproductos" align="center" style="width:100%; font-family:'Gotham Light'; font-size:xx-large"><strong>PRODUCTOS</strong></div>
  <?php
// retrieve one post with an ID of 24
query_posts( 'cat=17' );

// set $more to 0 in order to only get the first part of the post
global $more;
$more = 0;

// the Loop
while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;
?>
  
  </div>
  </div>
   
 
    
  <!-- Blog nota -->
 <section id="efecto3" data-id="d3" data-type="parallax_section" data-speed="10">
			<article>
				<div class="geekhome" align="right">
<?php

query_posts( 'cat=28' );
global $more;
$more = 0;

while (have_posts()) : the_post();
//	the_title();
	the_content( );
endwhile;
?>
				</div>				
			</article>
</section>
        
<?php /*?>  <div id="imgdireccion" style="width:100%; margin:0" align="center">
  <div id="imgdireccionobj" align="center" >

<?php 
    echo do_shortcode("[metaslider id=82]"); 
?>
 
  </div>
  </div><?php */?>
  



  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
        




  <?php get_footer(); ?>
  
  </section> <!-- Fin de section main -->