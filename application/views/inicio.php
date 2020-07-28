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
    <div class="row">
      <div class="col s12 m6">

        <h3 class="titulo">ENLACES DE INTERES</h3>

        <div class="container z-depth-2 ultimas-noticias">

          <style type="text/css">

          .carousel-inner .active.left { left: -10% !important; } 
          .carousel-inner .next        { left:  53% !important; }
          .carousel-inner .prev        { left: -33% !important ; }
          .carousel-control.left,.carousel-control.right {background-image:none;}
          </style>
            <div class="">
              <div class="carousel slide" id="myCarousel">
                <div class="carousel-inner">
                  <div class="item active">
                    <div class=""><a href="#"><img src="http://placehold.it/500/bbbbbb/fff&amp;text=1" class="img-responsive"></a></div>
                  </div>
                  <div class="item">
                    <div class=""><a href="#"><img src="http://placehold.it/500/CCCCCC&amp;text=2" class="img-responsive"></a></div>
                  </div>
                  <div class="item">
                    <div class=""><a href="#"><img src="http://placehold.it/500/eeeeee&amp;text=3" class="img-responsive"></a></div>
                  </div>
                  <div class="item">
                    <div class=""><a href="#"><img src="http://placehold.it/500/f4f4f4&amp;text=4" class="img-responsive"></a></div>
                  </div>
                  <div class="item">
                    <div class=""><a href="#"><img src="http://placehold.it/500/fcfcfc/333&amp;text=5" class="img-responsive"></a></div>
                  </div>
                  <div class="item">
                    <div class=""><a href="#"><img src="http://placehold.it/500/f477f4/fff&amp;text=6" class="img-responsive"></a></div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
              </div>
            </div>
          
        </div>
      </div>
      <div class="col s12 m6">

        <div class="alcalde z-depth-2">
          <h3 class="titulo">FAVORITOS</h3>
          
        </div>

        

      </div>
 



    </div>
  </section>



<script type="text/javascript">

 $(document).ready(function() {
  $('#myCarousel').carousel({
  interval: 10000
})

$('.carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  if (next.next().length>0) {
    next.next().children(':first-child').clone().appendTo($(this));
  }
  else {
    $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
  }
});
 

 
});
 </script>

<!-- script de slide 


  $("#owl-demostracion").owlCarousel({
    items : 4,
    lazyLoad : true,
    navigation : true
  }); s

   $(document).ready(function(){
 $('.carrusel-robots').slick();
 });



<script type="text/javascript">
    $(document).ready(function(){
     
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
    });
  </script>-->


