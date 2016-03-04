


<script>

	$(document).ready(function(){
	

		$( "#myModal2" ).click(function(){}

	});
</script>



<script>

	$(document).ready(function(){

	 $('.ir-arriba').click(function(){
			$('body, html').animate({
				scrollTop: '0px'
			}, 1000);
		});
	 
	$(window).scroll(function(){
			if( $(this).scrollTop() > 0 ){
				$('.ir-arriba').slideDown(000);
			} else {
				$('.ir-arriba').slideUp(1000);
			}
		});




	});


	$('#myTabs a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})

	$('#myTabs a[href="#profile"]').tab('show') // Select tab by name
	$('#myTabs a:first').tab('show') // Select first tab
	$('#myTabs a:last').tab('show') // Select last tab
	$('#myTabs li:eq(2) a').tab('show') // Select third tab (0-indexed)

</script>

<script>

    $(document).ready(function(){
        $('#myModalo').modal('show');
    });

</script>

<script>
	$(document).ready(function() {
 
		  $("#owl-demo").owlCarousel({
		 
		      autoPlay: 3000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });

		  $("#owl-demo2").owlCarousel({
		 
		      autoPlay: 3000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });

		  $("#owl-demo3").owlCarousel({
		 
		      autoPlay: 3000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });


		  $("#owl-demo4").owlCarousel({
		 
		      autoPlay: 3000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });

		  $("#owl-demo5").owlCarousel({
		 
		      autoPlay: 9000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });
		 
	});
</script>

  <script type="text/javascript">
    $(document).ready(function(){
      $('.slick').slick({
        slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
      });

    });

  </script>



<footer>
	<div clasS="contenedor-footer">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12"> 

				<div class="row as foot">

					<div class="col-md-2 col-sm-2 col-xs-12">

						<img class="logo-footer" src="img/logo4.png" hight="40" width="100" alt="">
					
					</div>

					<div class="col-md-10 col-sm-10 col-xs-12">	
													
						<strong class="title-foot">
							Honorable Municipalidad Distrital de Ciudad Nueva   <br>
						</strong>
						
							<div class="as">
								<strong>
									Dirección : 
								</strong>
									" Calle Manuel Lorenzo de Vidaure Nº 448 " |  
								<strong>
									Email :
								</strong>
									"webmaster@municiudadnueva.gob.pe " | <br>
								<strong>
									Central Telefónica : 
								</strong>
									(052) 310642   |  
								<strong>
									Departamento : 
								</strong>
									Tacna |  
								<strong>
									Provincia : 
								</strong>
									Tacna |  <br>
								<strong>
									Linea Gratuita Seguridad Ciudadana

								</strong>
									0800-13926 -- 


								<strong>
									Seguridad Ciudadana
								</strong>
								   (052)-310441 | <br><br>

							</div>

							<div class="body-foot">
								
									© 2015 Sub Gerencia de Tecnologias de la Información, Todos los derechos reservados
								
							</div>
					</div>





				</div>


					
			</div>
		</div>
	
	</div>	

</footer>



	
</html>