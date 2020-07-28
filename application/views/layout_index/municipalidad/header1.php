<!DOCTYPE html>

<html lang="es"> 

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="keywords" content="Municipalidad Distrital de Calana"/>
<meta name="description" content="Municipio Calana - Tacna"/>
<meta name="Author" content="excellent group">
<meta name="robots" content="all">
<title>Municipalidad Distrital de Calana - Tacna</title>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">
<link href="<?= base_url('') ?>plugins/css/css_principal.css" rel="stylesheet" type="text/css" />

<link href="<?= base_url('') ?>plugins/css/css_background.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('') ?>plugins/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('') ?>plugins/css/owl.carousel.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('') ?>plugins/css/animate.css" rel="stylesheet" type="text/css" />
<link href='<?= base_url('') ?>plugins/css/ticker-style.css' rel='stylesheet' type='text/css' />

<link href='<?= base_url('') ?>plugins/css/jquery.bxslider.css' rel='stylesheet' type='text/css' />
<link href="<?= base_url('') ?>plugins/css/css_condicionales.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('') ?>img/logo4.png" rel="shortcut icon" type="image/x-icon">
<noscript><link href="<?= base_url('') ?>plugins/css/nojs.css" rel="stylesheet" type="text/css" /></noscript>
<link rel="stylesheet" href="<?= base_url('css/bootstrap.min.css') ?>">


<script src="https://code.jquery.com/jquery-3.3.1.js" ></script>
<script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url('js/bootstrap.min.js')?>"></script>
<script src="<?= base_url('') ?>plugins/js/jquery.easing.1.3.js"></script>
<script src="<?= base_url('') ?>plugins/js/jquery.easing.compatibility.js"></script>
<script src="<?= base_url('') ?>plugins/js/modernizr.custom.js"></script>
<script src="<?= base_url('') ?>plugins/js/owl.carousel.js"></script>
<script src="<?= base_url('') ?>plugins/js/jquery-clickoutside.js"></script>
<script src='<?= base_url('') ?>plugins/js/jquery.exg.infinity.scroll.js'></script>
<script src='<?= base_url('') ?>plugins/js/jquery.ticker.js'></script>
<script src='<?= base_url('') ?>plugins/js/jquery.bxslider.js'></script>
<script src="<?= base_url('') ?>plugins/js/funciones.js"></script>

<script src="<?= base_url('') ?>plugins/js/funcionesValidacion.js"></script>


<script src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js" ></script>

<script>
jQuery(document).ready(function(){
   //alert(jQuery(document).width());
});
</script>

</head>
<style type="text/css">



</style>
<body style="margin-top:10px; margin-bottom:10px ; margin-left:5%; margin-right:5%; box-shadow : 0 0px 30px rgba(0, 0, 0, 0.3) ; ">

  <div id='fb-root'></div>
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = '../../connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.8&appId=547488735293995';
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script> 
             <div id="loading">
            <div id="loading-box">
              <div id="loading-car">
            </div>
            </div>
          </div>






  <header id="header-wrapper">


    <section id="header_logos"><div class="wrapper">
    	<div id="header_escudo"><a href="<?=base_url('')?>"><img src="<?= base_url('') ?>plugins/img/page_escudo.png" alt="Municipalidad distrital de calana"></a></div>
      <div id="header_logo"><a href="<?=base_url('transparencia/datos_generales')?>"><img src="<?= base_url('') ?>plugins/img/banner-transparencia.png" alt="Municipalidad distrital de calana"></a></div>
      <div id="header_nom" class="efecto"><p id="header_nom_1">MUNICIPALIDAD DISTRITAL DE</p><p id="header_nom_2">CALANA</p></div>
    </div></section>
    <section id="header_menu" class="efecto"><div class="wrapper">
			<nav id='nav_pc'><div class='wrapper'>
        


        <ul id='list_prin'>
          <li><a href='<?= base_url('')?>' class='mnu_pri '>  <i class="fa fa-home" aria-hidden="true"></i>   Inicio</a> </li>
          <li><a href='#' class='mnu_pri '>Distrito <i class='fa fa-angle-down' aria-hidden='true'></i></a><ul class='list_sec' style='width:150px;'>
          <li><a href='<?= base_url('distrito/historia') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Historia</a></li>
          
        </ul>

        </li>
          <li><a href='#' class='mnu_pri '>Municipalidad <i class='fa fa-angle-down' aria-hidden='true'></i></a><ul class='list_sec' style='width:180px;'>
          <li><a href='<?= base_url('municipalidad/vision_mision') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Misión y Visión</a></li>
          <li><a href='<?= base_url('municipalidad/alcalde') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> alcalde</a></li>
          <li><a href='<?= base_url('municipalidad/concejo') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> concejo </a></li>
          <li><a href='<?= base_url('municipalidad/funcionarios') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Funcionarios</a></li>
          <li><a href='<?= base_url('municipalidad/comisiones') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Comisiones</a></li>

        </ul>

      </li>

       
          <li><a href='#' class='mnu_pri '>Servicios <i class='fa fa-angle-down' aria-hidden='true'></i></a><ul class='list_sec' style='width:207px;'>
          <li><a href='<?= base_url('servicios/seguridadciudadana') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Seguridad Ciudadana</a></li>
          <li><a href='<?= base_url('servicios/vasoleche') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Vaso de Leche</a></li>
          <li><a href='<?= base_url('servicios/desarrollo_agropecuario') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Desarrollo Agropecuario</a></li>
          <li><a href='<?= base_url('servicios/registrocivil') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Registro Civil</a></li>
          <li><a href='<?= base_url('servicios/defensacivil') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Defensa Civil</a></li>
          <li><a href='<?= base_url('servicios/demuna') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> DEMUNA</a></li>
          <li><a href='<?= base_url('servicios/equipomec') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Equipo Mecánico</a></li>
          												
          </ul></li>
          <li><a href='<?= base_url('publicaciones/') ?>' class='mnu_pri '>Documentos <i class='fa fa-angle-down' aria-hidden='true'></i></a><ul class='list_sec' style='width:230px;'>
                                
          <li><a href='<?= base_url('publicaciones/ordenanzas') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Ordenanzas Municipales</a></li>
          <li><a href='<?= base_url('publicaciones/acuerdos') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Acuerdos de Concejo</a></li>
          <li><a href='<?= base_url('publicaciones/resoluciones_alcaldia') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Resoluciones de Alcaldia</a></li>
          <li><a href='<?= base_url('publicaciones/resoluciones_gerencia_municipal') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Resoluciones de Gerencia Municipal</a></li>
          <li><a href='<?= base_url('publicaciones/decreto_alcaldia') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Decretos de Alcaldia</a></li>
																
          
          </ul></li>
          <li><a href='<?=base_url('transparencia/datos_generales')?>' class='mnu_pri '>Transparencia <i class='fa fa-angle-down' aria-hidden='true'></i></a><ul class='list_sec' style='width:160px;'>
          <li><a href='<?= base_url('transparencia/datos_generales') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Datos Generales</a></li>
          <li><a href='<?= base_url('transparencia/planeamiento_y_organizacion') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Planeamiento y Organización</a></li>
          <li><a href='<?= base_url('transparencia/informacion_presupuestal') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información Presupuestal</a></li>
          <li><a href='<?= base_url('transparencia/proyectos_e_inversiones') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Proyectos de Inversión</a></li>
          <li><a href='<?= base_url('transparencia/participacion_ciudadana') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Participación Ciudadana</a></li>
          <li><a href='<?= base_url('transparencia/informacion_de_personal') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información de Personal</a></li>
          <li><a href='<?= base_url('transparencia/informacion_contrataciones') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información de Contrataciones</a></li>
          <li><a href='<?= base_url('convocatoria') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Convocatorias</a></li>
          
          
          </ul></li>
          </ul></div></nav><nav id='nav_movil'><a id='touch-menu' href='#' title='Menu desplegable'><span class='bar'></span><span class='bar'></span><span class='bar'></span></a><ul id='list_sec'>
          <li><a href='#' class=' menu_movil' data-sub='submenu_1'>Distrito <span class='menu_arrow fa fa-chevron-down'></span></a>
                              <ul id='submenu_1' class='submenu'>
          <li><a href='<?= base_url('distrito/historia') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Historia</a></li>

        </ul></li>
          <li><a href='#' class=' menu_movil' data-sub='submenu_2'>Municipio <span class='menu_arrow fa fa-chevron-down'></span></a>
                              <ul id='submenu_2' class='submenu'>

          <li><a href='<?= base_url('municipalidad/vision_mision') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Misión y Visión</a></li>
          <li><a href='<?= base_url('municipalidad/alcalde') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i>alcalde</a></li>
          <li><a href='<?= base_url('municipalidad/concejo') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> concejo Municipal</a></li>
          <li><a href='<?= base_url('municipalidad/funcionarios') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Funcionarios</a></li>
          <li><a href='<?= base_url('municipalidad/comisiones') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Comisiones </a></li>
         



        </ul>

      </li>

      <li><a href='#' class=' menu_movil' data-sub='submenu_4'>Servicios Municipales <span class='menu_arrow fa fa-chevron-down'></span></a>
          <ul id='submenu_4' class='submenu'>
          <li><a href='<?= base_url('servicios/seguridadciudadana') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Seguridad Ciudadana</a></li>
          <li><a href='<?= base_url('servicios/vasoleche') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Vaso de Leche</a></li>
          <li><a href='<?= base_url('servicios/desarrollo_agropecuario') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Desarrollo Agropecuario</a></li>
          <li><a href='<?= base_url('servicios/registrocivil') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Registro Civil</a></li>
          <li><a href='<?= base_url('servicios/defensacivil') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Defensa Civil</a></li>
          <li><a href='<?= base_url('servicios/demuna') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> DEMUNA</a></li>
          <li><a href='<?= base_url('servicios/equipomec') ?>' class=''><i class='fa fa-angle-double-right' aria-hidden='true'></i> Equipo Mecánico</a></li>
        
          
          </ul>
      </li>
         
      <li>
          <a href='#' class=' menu_movil' data-sub='submenu_5'>Transparencia <span class='menu_arrow fa fa-chevron-down'></span></a>
        <ul id='submenu_5' class='submenu'>
          <li><a href='<?= base_url('transparencia/datos_generales') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Datos Generales</a></li>
          <li><a href='<?= base_url('transparencia/planeamiento_y_organizacion') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Planeamiento y Organización</a></li>
          <li><a href='<?= base_url('transparencia/informacion_presupuestal') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información Presupuestal<</a></li>
          <li><a href='<?= base_url('transparencia/proyectos_e_inversiones') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Proyectos de Inversión</a></li>
          <li><a href='<?= base_url('transparencia/participacion_ciudadana') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Participación Ciudadana</a></li>
          <li><a href='<?= base_url('transparencia/informacion_de_personal') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información de Personal</a></li>
          <li><a href='<?= base_url('transparencia/informacion_contrataciones') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Información de Contrataciones</a></li>
          <li><a href='<?= base_url('convocatoria/') ?>' target='_blank'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Convocatorias</a></li>
 
        </ul>
      </li>
  
          
      
    </ul></nav>    </div></section>

    
