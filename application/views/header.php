<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Municipalidad Distrital de Ciudad Nueva</title>
</head>

<link rel="icon" type="image/png" href="<?= base_url('img/logo1.png') ?>" />

<link rel="stylesheet" href="<?= base_url('css/bootstrap.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('css/docs.css')?>">
<link rel="stylesheet" href="<?= base_url('css/jquery.dataTables.css')?>">
<link rel="stylesheet" href="<?= base_url('css/mdcn.css')?>">
<link rel="stylesheet" href="<?= base_url('css/font-awesome.min.css')?>">
<link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
<link rel="stylesheet" href="<?= base_url('css/bootstrap-image-gallery.css')?>">
<link rel="stylesheet" href="<?= base_url('css/bootstrap-image-gallery.min.css')?>">
<link rel="stylesheet" href="<?= base_url('css/slick.css')?>"/>

<link rel="stylesheet" type="text/css" href=n: fixed;
        top: 0;"stylepopup.css" />	

<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">

<script src="<?= base_url('js/jquery.js')?>"></script>
<script src="<?= base_url('js/bootstrap.min.js')?>"></script>   
<script src="<?= base_url('js/jquery.dataTables.min.js')?>"></script>
<script src="<?= base_url('js/owl.carousel.js')?>"></script>
<script src="<?= base_url('js/bootstrap-collapse.js')?>"></script>
<script src="<?= base_url('js/bootstrap-transition.js')?>"></script>
<script src="<?= base_url('js/bootstrap-tab.js')?>"></script>
<script src="<?= base_url('js/google-code-prettify/prettify.js')?>"></script>
<script src="<?= base_url('js/application.js')?>"></script>
<script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<script src="<?= base_url('js/bootstrap-image-gallery.js')?>"></script>
<script src="<?= base_url('js/bootstrap-image-gallery.min.js')?>"></script>
<script src="<?= base_url('js/slick.js')?>"></script>
<script src="<?= base_url('js/ckeditor.js')?>"></script>
<style>
	.fadeit{
	width: auto;
	height: auto;
	}
</style>




<body class="background ">
	
<!-- 
	

	<div class="social hidden-xs hidden-sm">
		<ul>
			<li><a href="https://www.facebook.com/muniCiudadNueva" target="_blank" class="icon-facebook"></a></li>
			<li><a href="http://www.twitter.com/" target="_blank" class="icon-twitter"></a></li>			
			<li><a href="https://www.youtube.com/channel/UCjNJlPotdUA_zf0SRF1Qdzg" target="_blank" class="icon-youtube"></a></li>
		
		</ul>
	</div>

	<!-- barra social  vetical izquierda 
	<!-- barra social  vetical derecha  
	
		<button type="button" class="btn btn-primary sociales-right" data-toggle="modal" data-target="#myModalo">Noticias Importantes</button>

		<div id="myModalo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModaloLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		        <div class="modal-body">
		            <img src="http://www.municiudadnueva.gob.pe/img/001.png" class="img-responsive">
		        </div>
		    </div>
		  </div>
		</div>
	


		
	<div class="social hidden-xs hidden-sm">
		<div id="flotante_transparencia">
			<img src="<?= base_url('img/trans3.png')?>" class="float_transparencia" width="52" hight="auto" alt="">
			<div clas="content-transparencia">
				<span>
					<div class="box-text">

	           		 	<ul style="list-style:none;">
			                <li><a style="color:#2c3e50" href="#">Datos Generales</a></li>
			                <li><a style="color:#2c3e50" href="#">Planeamiento y Organización</a></li>
			                <li><a style="color:#2c3e50" href="#">Información Presupuestal</a></li>
			                <li><a style="color:#2c3e50" href="#">Proyectos de Inversión</a></li>
			                <li><a style="color:#2c3e50" href="#">Participación Ciudadana</a></li>
							<li><a style="color:#2c3e50" href="#">Información del Personal</a></li>
							<li><a style="color:#2c3e50" href="#">Información de Contrataciones</a></li>
							<li><a style="color:#2c3e50" href="#">Información Adicional</a></li>
					        <li><a style="color:#2c3e50" href="<?= base_url('publicaciones/') ?>">Publicaciones Emitidas</a></li>
			                <li><a style="color:#2c3e50" href="<?= base_url('convocatoria/') ?>">Convocatoria del Personal</a></li>
			            </ul>
					</div>
				</span>
			</div>
	</div>

	</div>	
	<!-- fin barra transparencia -->

	<div>	
		<div class="header-toolbar bg navbar-bg" style="background-color:#2980b9; border-radius: none; color:#ecf0f1 !important;">
			<div class="contenedor">
				<div class="row">
					<div class="col-md-16 text-uppercase">
						<div class="row">
							<div class="col-sm-8 col-xs-16">
								<ul class="list-inline">
									<li>
										<a href="http://www.municiudadnueva.gob.pe/">INICIO</a>
									</li>
									<li>
										<a href="<?= base_url('fotos/') ?>">FOTOS</a>
									</li>
									<li>
										<a href="<?= base_url('videos/') ?>">VIDEOS</a>
									</li>
									<li>
										<a href="<?= base_url('municipalidad/contacto') ?>">CONTACTO</a>
									</li>
								</ul>
							</div>		
						</div>		
					</div> 
					<div class="col-xs-16 col-sm-8">
						<div class="row">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bg container banner img-responsive">			
	</div>
	<div>
		<!-- aqui va el menu de nav -->
				<div class="header-toolbar bg" >
			<nav class="navbar navbar-inverse" role="navigation" style="background-color: #2980b9;">
			  <!-- El logotipo y el icono que despliega el menú se agrupan
			       para mostrarlos mejor en los dispositivos móviles -->
			  <div class="container">
			  	<div class="row">
			  		<div class="col-sm-16">
			  			  <div class="navbar-header">
						    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
						            data-target="#navbar-collapse">
						      <span class="sr-only">MENU</span>
						      <span class="icon-bar"></span>
						      <span class="icon-bar"></span>
						      <span class="icon-bar"></span>
						    </button>
						    
						  </div>
						 
						  <!-- Agrupar los enlaces de navegación, los formularios y cualquier
						       otro elemento que se pueda ocultar al minimizar la barra -->
						  <div class="collapse navbar-collapse " id="navbar-collapse">
						    <ul class="nav navbar-nav text-uppercase main-nav">
						      <li class="active">
						      	<a href="http://www.municiudadnueva.gob.pe">
						      		
						      		<span class="glyphicon glyphicon-home nav-sub-icn ">
									<span class="inicio">inicio</span>
						      			
						      		

						      	</a>
						      </li>			      
						   
						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          distrito <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('distrito/historia') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Historia del Distrito</a></li>
						          
						        </ul>
						      </li>

						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Municipalidad <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Visión y Misión </a></li>
						          <li><a href="<?= base_url('municipalidad/alcalde') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>alcalde</a></li>
						          <li><a href="<?= base_url('municipalidad/concejo') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Consejo Municipal</a></li>
						          <li><a href="<?= base_url('municipalidad/funcionarios') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Funcionarios</a></li>
						          <li><a href="<?= base_url('municipalidad/comisiones') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Comisiones</a></li>
						        </ul>
						      </li>

						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Obras Y Proyectos <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('obras/obras') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span> Infraestructura y Obras  </a></li>
						          <li><a href="<?= base_url('obras/social') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span> Desarrollo Social </a></li>
						          <li><a href="<?= base_url('obras/economico') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Desarrollo Economico</a></li>						        
						        </ul>
						      </li>

						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Modernizacion <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('modernizacion/tributos') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Tributos Municipales</a></li>
						          <li><a href="<?= base_url('modernizacion/licencias_edificaciones') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Licencia de Edificaciones</a></li>
						          <li><a href="<?= base_url('modernizacion/licencias_funcionamiento') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Licencia de Funcionamiento</a></li>
						          <li><a href="<?= base_url('modernizacion/reclamaciones') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Libro de Reclamaciones</a></li>
						        </ul>
						      </li>
						     
						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Servicios <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Seguridad Ciudadana</a></li>
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Vaso de Leche</a></li>
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>DEMUNA</a></li>
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Deportes</a></li>
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Defensa Civil</a></li>
						          <li><a href="<?= base_url('municipalidad/vision_mision') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Registro Civil</a></li>
						        </ul>
						      </li>

						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Transparencia <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('publicaciones/') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Publicaciones Emitidas</a></li>
						          <li><a href="<?= base_url('publicaciones/ordenanzas') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Ordenanzas Municipales</a></li>
						          <li><a href="<?= base_url('publicaciones/acuerdos') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Acuerdos de Concejo</a></li>
						          <li><a href="<?= base_url('publicaciones/resoluciones_alcaldia') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Resoluciones de Alcaldia</a></li>
						          <li><a href="<?= base_url('publicaciones/resoluciones_gerencia_municipal') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Resoluciones de Gerencia Municipal</a></li>
						          <li><a href="<?= base_url('publicaciones/decreto_alcaldia') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Decretos de Alcaldia</a></li>
						          <li><a href="<?= base_url('convocatoria/') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Convocatorias </a></li>
						        </ul>
						      </li>

						    </ul>
						 			 
						  </div>
			  		</div>
			  	</div>
			  </div>
			</nav>
		</div>			
		<!-- aqui fin nav   <-->
	</div>
		<span class="ir-arriba glyphicon glyphicon-chevron-up"></span>


		