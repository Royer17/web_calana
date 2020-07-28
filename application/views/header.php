<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Municipalidad Distrital de Calana</title>
</head>

<link rel="icon" type="image/png" href="<?= base_url('img/logo4.png') ?>" />

<link rel="stylesheet" href="<?= base_url('css/bootstrap.min.css') ?>">

<link rel="stylesheet" href="<?= base_url('css/docs.css')?>">
<!-- <link rel="stylesheet" href="<?= base_url('css/jquery.dataTables.css')?>"> -->
<link rel="stylesheet" href="<?= base_url('css/mdcn.css')?>">
<link rel="stylesheet" href="<?= base_url('css/font-awesome.min.css')?>">
<link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
<link rel="stylesheet" href="<?= base_url('css/bootstrap-image-gallery.css')?>">
<link rel="stylesheet" href="<?= base_url('css/bootstrap-image-gallery.min.css')?>">

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">

<link rel="stylesheet" type="text/css" href=n: fixed;
        top: 0;"stylepopup.css" />

<link href="<?php echo base_url();?>css/owl.carousel.css" rel="stylesheet">
<link href="<?php echo base_url();?>css/owl.theme.css" rel="stylesheet">
<link src="<?= base_url('css/slick.css')?>"></link>
<link rel="stylesheet" type="text/css" href="<?= base_url() ?>css/slick-theme.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>minified/themes/default.min.css" type="text/css" media="all" />



<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="<?= base_url('js/bootstrap.min.js')?>"></script>
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


<script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js" ></script>



<script type="text/javascript" src="<?php echo base_url(); ?>minified/jquery.sceditor.bbcode.min.js"></script>
<style>
	.fadeit{
	width: auto;
	height: auto;
	}
</style>




<body class="background ">


	<div>
		<div class="header-toolbar bg navbar-bg" style="background-color:#004F00; border-radius: none; color:#ecf0f1 !important;">
			<div class="contenedor">
				<div class="row">
					<div class="col-md-16 text-uppercase">
						<div class="row">
							<div class="col-sm-8 col-xs-16">
								<ul class="list-inline">
									<li>
										<a href="<?= base_url('') ?>">INICIO</a>
									</li>
									<li>
										<a href="<?= base_url('') ?>">FOTOS</a>
									</li>
									<li>
										<a href="<?= base_url('') ?>">VIDEOS</a>
									</li>
									<li>
										<a href="<?= base_url('municipalidad/mision_vision') ?>">CONTACTO</a>
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
			<nav class="navbar navbar-inverse" role="navigation" style="background-color: #004F00;">
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
						      	<a href="<?php echo base_url(); ?>">

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
						      <!-- 
						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Obras Y Proyectos <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('obras/obras') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span> Infraestructura y Obras  </a></li>
						          <li><a href="<?= base_url('obras/social') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span> Desarrollo Social </a></li>
						          <li><a href="<?= base_url('obras/economico') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Desarrollo Economico</a></li>
						        </ul>
						      </li> -->

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
						          <li><a href="<?= base_url('servicios/seguridadciudadana') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Seguridad Ciudadana</a></li>
						           <li><a href="<?= base_url('servicios/vasoleche') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Vaso de Leche</a></li>
						           <li><a href="<?= base_url('servicios/desarrollo_agropecuario') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Desarrollo Agropecuario</a></li>
						      <!--     <li><a href="<?= base_url('servicios/codisec') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>CODISEC</a></li>
						        
						          
						          <li><a href="<?= base_url('servicios/deportes') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Deportes</a></li> 
						      	  <li><a href="<?= base_url('servicios/itse') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>ITSE</a></li>
						          <li><a href="<?= base_url('servicios/sisfoh') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>SISFOH</a></li>-->
						          <li><a href="<?= base_url('servicios/registrocivil') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Registro Civil</a></li>
						          <li><a href="<?= base_url('servicios/defensacivil') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Defensa Civil</a></li>
						          <li><a href="<?= base_url('servicios/demuna') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>DEMUNA</a></li>
						          <li><a href="<?= base_url('servicios/equipomec') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Equipo Mecánico</a></li>
						        </ul>
						      </li>

						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Documentos <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          <li><a href="<?= base_url('publicaciones/') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Publicaciones Emitidas</a></li>
						          <li><a href="<?= base_url('publicaciones/ordenanzas') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Ordenanzas Municipales</a></li>
						          <li><a href="<?= base_url('publicaciones/acuerdos') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Acuerdos de Concejo</a></li>
						          <li><a href="<?= base_url('publicaciones/resoluciones_alcaldia') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Resoluciones de Alcaldia</a></li>
						          <li><a href="<?= base_url('publicaciones/resoluciones_gerencia_municipal') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Resoluciones de Gerencia Municipal</a></li>
						          <li><a href="<?= base_url('publicaciones/decreto_alcaldia') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Decretos de Alcaldia</a></li>
						        </ul>
						      </li>						      


						      <li class="dropdown">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						          Transparencia <b class="caret"></b>
						        </a>
						        <ul class="dropdown-menu text-capitalize">
						          
						          <li><a href="<?= base_url('Transparencia/datos_generales') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Datos Generales</a></li>
						          <li><a href="<?= base_url('Transparencia/planeamiento_y_organizacion') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Planeamiento y Organización</a></li>
						          <li><a href="<?= base_url('Transparencia/informacion_presupuestal') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Información Presupuestal</a></li>
						          <li><a href="<?= base_url('Transparencia/proyectos_e_inversiones') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Proyectos de Inversión</a></li>
						          <li><a href="<?= base_url('Transparencia/participacion_ciudadana') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Participación Ciudadana</a></li>
						          <li><a href="<?= base_url('Transparencia/informacion_de_personal') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Información de Personal</a></li>
						          <li><a href="<?= base_url('Transparencia/informacion_contrataciones') ?>"><span class="glyphicon glyphicon-hand-right nav-sub-icn"></span>Información de Contrataciones</a></li>

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
