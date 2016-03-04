					<div class="row as">
						
						<ol class="miga breadcrumb">
						  <li><a href="http://www.municiudadnueva.gob.pe/">Inicio</a></li>
						  <li><a href="#">Noticias</a></li>
						  <li class="active">Notas de Prensa</li>
						</ol>
		
						<div class="article pull-left">
							<div class="article-title">
								 Nuestras Notas de Prensa
							</div>
						</div>

										
					</div>
	

					<div class="row as">
						<!-- contenido -->
						<?php foreach ($query as $registro): ?>

						<div class="col-sm-16 col-md-8" style="visibility:visible; animation-delay:0.5s ; animation-name: fadeInDown">
							<a href="" title="">
								<?= anchor('noticias/detalle/'.$registro->id,$registro->vc_titulo_informacion) ; ?>
								<img class="img-thumbnail" src=<?= base_url('img/noticia/'.$registro->foto1 ); ?> >
							</a>
							
						</div>

						<?php endforeach; ?>



                       				
			
					</div>

					<div class="row as">

					</div>