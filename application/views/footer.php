

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
			// Source: http://www.backalleycoder.com/2011/03/20/link-tag-css-stylesheet-load-event/
			var loadCSS = function(url, callback){
				var link = document.createElement('link');
				link.type = 'text/css';
				link.rel = 'stylesheet';
				link.href = url;
				link.id = 'theme-style';

				document.getElementsByTagName('head')[0].appendChild(link);

				var img = document.createElement('img');
				img.onerror = function(){
					if(callback) callback(link);
				}
				img.src = url;
			}

			$(document).ready(function() {
				var initEditor = function() {
					$("textarea").sceditor({
						plugins: 'bbcode',
						style: "./minified/jquery.sceditor.default.min.css"
					});
				};

				$("#theme").change(function() {
					var theme = "./minified/themes/" + $(this).val() + ".min.css";

					$("textarea").sceditor("instance").destroy();
					$("link:first").remove();
					$("#theme-style").remove();

					loadCSS(theme, initEditor);
				});

				initEditor();
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
		 
		      autoPlay: 5000, //Set AutoPlay to 3 seconds
		 		
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		      
		 
		  });

		 $("#owl-demo6").owlCarousel({
		 
		      autoPlay: 9000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });	
		  $("#owl-demo7").owlCarousel({
		 
		      autoPlay: 5000, //Set AutoPlay to 3 seconds
		 
		      items : 1,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [400,3]
		 
		  });
		 
	});
</script>


<footer>
	<div clasS="contenedor-footer bg">
		<div class="row">
			<div class="col-md-12 "> 

				<div class="row as foot">

					<div class="col-md-2">

						<img class="logo-footer" src="<?= base_url('') ?>img/logo4.png" hight="10" width="100" alt="">
					
					</div>

					<div class="col-md-10">	
													<br><br>
						<strong class="title-foot">
							Municipalidad Distrital de Calana   <br>
						</strong>
						
							<div class="as">
								<strong>
									Dirección : 
								</strong>
									" Av. General Varela s/n - Calana " |  
								<strong>
									Email :
								</strong>
									"info@municalana.gob.pe " | <br>
								<strong>
									Central Telefónica : 
								</strong>
									990099036   |  
								<strong>
									Departamento : 
								</strong>
									Tacna |  
								<strong>
									Provincia : 
								</strong>
									Tacna |  <br>
									<!-- 
								<strong>
									Linea Gratuita Seguridad Ciudadana

								</strong>
									990099036 


								<strong>
									Seguridad Ciudadana
								</strong>
								   990099036  | <br><br>
									-->
							</div>

							<div class="body-foot">
								
									© 2019 © www.municalana.gob.pe , Todos los derechos reservados
								
							</div>
					</div>





				</div>


					
			</div>
		</div>
	
	</div>	

</footer>



	
</html>