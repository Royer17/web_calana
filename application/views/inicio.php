 <section class="container">
    <div class="row">
      <div class="col s12 m9">

        <h3 class="titulo">ULTIMAS NOTICIAS</h3>

        <div class="container z-depth-2 ultimas-noticias">
                    
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
      <div class="col s12 m3">

        <div class="z-depth-2 modernizacion-municipal">
          <h3 class="titulo">NORMATIVIDAD</h3>
          <div class="row">
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
                
                <p>
                  ACTAS DE SESIÓN</p>

              </a>
            </div>
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
              
                <p>ACUERDOS DE CONCEJO</p>
              </a>
            </div>
          </div>
          <div class="row">
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
               
                <p>DECRETOS DE ALCALDIA</p>
              </a>
            </div>
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
                
                <p>ORDENANZAS MUNICIPALES</p>
              </a>
            </div>
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
                
                <p>RESOLUCIONES DE ALCALDIA</p>
              </a>
            </div>
            <div class="col s12">
              <a class=" waves-effect waves-light hoverable boton-modernizacion" href="#!">
                
                <p>CONVOCATORIAS</p>
              </a>
            </div>            
          </div>
        </div>

      </div>
    </div>
  </section>

  <section>
    <div class="your-class">
      <div>your content</div>
      <div>your content</div>
      <div>your content</div>
    </div>
  </section>

<!-- script de slide -->
<script>

    $('.responsive').slick({
      dots: true,
      infinite: false,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 4,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

</script>