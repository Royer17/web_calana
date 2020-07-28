
<script>
jQuery(document).ready(function(){
   //alert(jQuery(document).width());
});
</script>
<?php
  foreach ($query10 as $index =>$file10 ):
   $_POST['visible']=$file10->visible ;
  endforeach;
echo "<script>";
echo "var_javascript='".$_POST['visible']."'";
echo "</script>";
?>
<script>
  
    var funcion=var_javascript;
    
      if (funcion=="SI") {
           $(document).ready(function(){
        $('#myModalo').modal('show');
    });
      };
    
</script>


<style type="text/css">
	
nav > .nav.nav-tabs{

  border: none;
    color:#fff;
    background:#075207;
    border-radius:0;

}
nav > div a.nav-item.nav-link,
nav > div a.nav-item.nav-link.active
{
  border: none;
    padding: 18px 25px;
    color:#fff;
    background:#075207;
    border-radius:0;
}

nav > div a.nav-item.nav-link.active:after
 {

}
.tab-content{
  background: #fdfdfd;
    line-height: 25px;
    border: 1px solid #ddd;
    border-top:5px solid #198C3E;
    border-bottom:2px solid #198C3E;
    padding:30px 25px;
}

nav > div a.nav-item.nav-link:hover,
nav > div a.nav-item.nav-link:focus
{
  border: none;
    background: #198C3E;
    color:#fff;
    border-radius:0;
    transition:background 0.20s linear;
}
</style>


<div class="modal fade " id="myModalo" tabindex="-1" role="dialog" 
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered " role="document">
    <div class="modal-content">
      
      <div class="modal-body">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
               <?php foreach ($query10 as $index =>$file10 ): ?>
             
                <div class='not_bk' style='background-image:url(<?= base_url('') ?>plugins/img/obras/_slider.png);'></div>
                
              
                  <img src="<?= base_url('img/popup/'.$file10->img_popup); ?>" class="img-rounded" alt="Cinque Terre" width="470" height="500" />   </div>
                  
           
              
              <?php endforeach; ?>

      </div>

    </div>
  </div>
</div>
<?= $this->load->view($carusel) ?>

</header>
 <section id='header_marquee'>

    <div class='wrapper' style="background-color:#004F00">
      <ul id='js-news' class='js-hidden'>
        <?php foreach ($query as $registro): ?> 
          <li class='news-item'>
            <a href=<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?>>
              <?= $registro->vc_titulo_informacion ?> 
            </a>
          </li>
        <?php endforeach; ?>
          
      </ul>

    </div>

  </section>  
<section id="body-wrapper">



	<div class="wrapper"><div id="body_content" class="efecto ">
  <div id='prin_cols-wrapper'><div id='prin_izq'>



  					<?= $this->load->view($contenido) ?>
  					


<section id='ser_enlaces'>
					
					<div class="row">
						<div class="col-lg-12">
							<div class='cont_titulo'>DOCUMENTOS DE GESTION</div>
							<div class="row">
    <div class="col zoom">
     			<a href="<?= base_url()?>documentos/TUPA 2016 MDC.pdf">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s1.jpg">
          		</a>

    </div>

    <div class="col zoom">
   
                <a href="<?= base_url()?>documentos/ROF 2015 MDC.pdf">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s2.jpg">
          		</a>
    </div>

    <div class="w-100"></div>
    	<br>	
    <div class="col zoom">
     
                <a href="<?= base_url()?>documentos/MOF 2008 MDC.pdf">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s3.jpg">
          		</a>
    </div>
    <div class="col zoom">
     
                <a href="<?= base_url()?>publicaciones">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s6.jpg">
          		</a>
    </div>	
    <div class="w-100"></div>
    	<br>	
    <div class="col zoom">
     
                <a href="<?= base_url()?>convocatoria">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s5.jpg">
          		</a>
    </div>
    <div class="col zoom">
     
                <a href="<?= base_url()?>documentos/organigrama.pdf">
                <img style="height:100%;"  alt="" width="350px" height="100px" src="<?= base_url()?>img/s4.jpg">
          		</a>
    </div>	

</div>

						</div>

					</div>

					
</section> 


<!-- 
<section id='ser_enlaces'>
					
					<div class="row">
						<div class="col-lg-6">
							<div class='cont_titulo'>VIDEOS</div>
							<div class="row">
								
							</div>

						</div>
						<div class="col-lg-6">
							<div class='cont_titulo'>AUDIO</div>
							<div>
								
								<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/593289600&color=%2300cc11&auto_play=false&hide_related=false&show_comment
								s=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>


							</div>
						</div>
					</div>
</section> 
-->
				
</div>

<div id='prin_der'>



<section id='tra_enlaces'>

<div class='cont_titulo'>SERVICIOS MUNICIPALES</div>
				
<div class='tra_enlaces_list'>
	<ul>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_1' data-url='<?= base_url()?>servicios/vasoleche'>Vaso de Leche</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_8' data-url='<?= base_url()?>servicios/ossa'>OSSA</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_2' data-url='<?= base_url()?>servicios/desarrollo_agropecuario'>Desarrollo Agropecuario</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_3' data-url='<?= base_url()?>servicios/seguridadciudadana'>Seguridad Ciudadana</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_4' data-url='<?= base_url()?>servicios/registrocivil'>Registro Civil</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_5' data-url='<?= base_url()?>servicios/equipomec'>Equipo Mecánico</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_6' data-url='<?= base_url()?>servicios/defensacivil'>Defensa Civil</div>
				</div>
			</div>
		</li>
		<li>
			<div class='enl_tbl'>
				<div class='enl_row'>
					<div class='enl_cel enl_prin icon_serv_7' data-url='<?= base_url()?>servicios/demuna'>Demuna</div>
				</div>
			</div>
		</li>
	</ul>
</div>



<div class='cont_titulo'>ENTERATE</div>
				
<div class=''>
	
		
			<div class='enl_tbl'>
				<div class='enl_row'>


					<?= $this->load->view($popup) ?>

				</div>
			</div>
		</li>

	</ul>
</div>


</section>



<div id='prin_der_cols'>
	<div id='prin_der_col_der'>
						
		<section id='accesos'>
			<div class='cont_titulo'>AVISOS IMPORTANTES</div>
								
			<div id='acc_list'>
				<ul>
					<li>
						<div class='enl_tbl'>
							<div class='enl_row enl_prin' data-url='<?= base_url();?>servicios/transferencia'>
								<div class='enl_cel_1'><i class='fa fa-angle-double-right' aria-hidden='true'></i></div>
								<div class='enl_cel_2'>TRANSFERENCIA</div>
							</div>
						</div>
					</li>
					<li>
						<div class='enl_tbl'>
							<div class='enl_row enl_prin' data-url='<?= base_url();?>publicaciones'>
								<div class='enl_cel_1'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></div>
								<div class='enl_cel_2'>NORMATIVIDAD</div>
							</div>
						</div>
					</li>					
					<li>
						<div class='enl_tbl'>
							<div class='enl_row enl_prin' data-url='<?= base_url();?>convocatoria/'>
								<div class='enl_cel_1'><i class='fa fa-book' aria-hidden='true'></i></div>
								<div class='enl_cel_2'>CONVOCATORIAS</div>
							</div>
						</div>
					</li>
					
				</ul>
			</div>
		</section>
	</div>

	<div id='prin_der_col_izq'>


		<div class='cont_titulo'>REDES SOCIALES</div>

		 <div class="container">
              <div class="row">
                <div class="col-xs-12 ">
                  <nav>
                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">FACEBOOK</a>
                      <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">YOUTUBE</a>
                     </div>
                  </nav>
                  <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                     	<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fmunicipalidaddistritaldecalana%2F&tabs=timeline&width=315&height=500&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="315" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
			               
                     </div>
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                     	<a href="https://www.youtube.com/channel/UC2bGgQ_dDCbGguwygP4SYfw?disable_polymer=true" target="_blank" >
						<img src="<?= base_url('plugins/img/MDC.jpg'); ?>" class="img-rounded" alt="Cinque Terre" width="315" height="400" />   </div>
						</a>
                    </div>

                  </div>
                
                </div>
              </div>
        </div>
      </div>

      							<div class='cont_titulo'>AUDIO</div>
							<div>
								
								<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/593289600&color=%2300cc11&auto_play=false&hide_related=false&show_comment
								s=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>


							</div>
</div>


	</div>


</div>


</div>
</div>
</div>
</div>
</section>