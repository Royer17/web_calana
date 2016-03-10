<div class="slider-principal">
  <div>
    <img src="<?php echo base_url(); ?>dist/img/sliderPrincipal/slider1_carnaval.jpg">
    <h6 class="z-depth-1">GRAN CARNAVAL 2016: MI PUEBLO RENACE Y RECUPERA SUS COSTUMBRES</h6>
  </div>
  <div>
    <img src="<?php echo(base_url()); ?>dist/img/sliderPrincipal/slider2_compactadora.png">
    <h6>NUEVAS COMPACTADORAS ADQUIRIDAS POR LA MUNICIPALIDAD DISTRITAL CIUDAD NUEVA</h6>
  </div>
  <div>
    <img src="<?php echo(base_url()); ?>dist/img/sliderPrincipal/slider3_renovarte.png">
    <h6>CAMPAÑA VACACIONAL RENOVARTE 2016</h6>
  </div>
  <div>
    <img src="<?php echo(base_url()); ?>dist/img/sliderPrincipal/slider4_simonbolivar.png">
    <h6>REINAGURACIÓN DEL PARQUE RECREATIVO SIMON BOLÍVAR</h6>
  </div>
  <div>
    <img src="<?php echo(base_url()); ?>dist/img/sliderPrincipal/slider5_izamiento.jpg">
    <h6>IZAMIENTO DEL SAGRADO PABELLÓN NACIONAL POR EL 23° ANIVERSARIO DE CREACIÓN DEL DISTRITO DE CIUDAD NUEVA</h6>
  </div>
  <div>
    <img src="<?php echo(base_url()); ?>dist/img/sliderPrincipal/slider6_paseo.jpg">
    <h6>PASEO DE LA BANDERA POR EL 23° ANIVERSARIO DE CREACIÓN POLÍTICA DEL DISTRITO DE CIUDAD NUEVA</h6>
  </div>
</div>

  <section class="container">
    <div class="row">
      <div class="col s12 m9">
        <div class="container z-depth-2 ultimas-noticias">
          <h3 class="titulo">ULTIMAS NOTICIAS</h3>

                    <?= $this->load->view($contenido) ?>
        </div>
      </div>
      <div class="col s12 m3">

        <div class="alcalde z-depth-2">
          <h3 class="titulo">NUESTRO ALCALDE</h3>
          <img class="responsive-img" src="<?php echo(base_url()); ?>dist/img/alcalde.png">
          <a href="#!"><p class="mensaje">Estimados vecinos: Quiero expresarles mis más cordiales saludos y reiterar el sentimiento que hoy nos une, que es sacar adelante al distrito ... VER MÁS</p></a>
          <!-- <p class="nombre">MED. EDGAR ROGELIO CONCORI COAQUIRA</p> -->
          <p class="nombre">ING. JOSÉ GREGORIO ROQUE MAMANI</p>
        </div>

        <div class="z-depth-2 modernizacion-municipal">
          <h3 class="titulo">MODERNIZACIÓN MUNICIPAL</h3>
          <div class="row">
            <div class="col s6">
              <a class="center waves-effect waves-light hoverable boton-modernizacion" href="#!">
                <i class="icon-tributos"></i>
                <p>TRIBUTOS MUNICIPALES</p>
              </a>
            </div>
            <div class="col s6">
              <a class="center waves-effect waves-light hoverable boton-modernizacion" href="#!">
                <i class="icon-tienda"></i>
                <p>LICENCIA DE FUNCIONAMIENTO</p>
              </a>
            </div>
          </div>
          <div class="row">
            <div class="col s6">
              <a class="center waves-effect waves-light hoverable boton-modernizacion" href="#!">
                <i class="icon-edificios"></i>
                <p>LICENCIA DE EDIFICACIONES</p>
              </a>
            </div>
            <div class="col s6">
              <a class="center waves-effect waves-light hoverable boton-modernizacion" href="#!">
                <i class="icon-book"></i>
                <p>LIBRO DE RECLAMACIONES</p>
              </a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>