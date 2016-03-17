					<div class="row as">
						
						<ol class="miga breadcrumb">
						  <li><a href="http://www.municiudadnueva.gob.pe/">Inicio</a></li>
						  <li class="active">Convocatorias de Personal</li>			
						</ol>
			
						<div class="article pull-left">
							<div class="article-title">
								 Convocatorias 
							</div>
						</div>

										
					</div>
	
					<?php $i=1; ?>
					<div class="row as">
						<!-- contenido -->
			
							<!--  table -->
							<table id="tabla_convoca" class="table table-bordered" cellspacing="0" width="80%">
								<thead>
									<tr>
										<th>Nº</th>
										<th>Descripcion</th>
										<th>Bases</th>
										<th>Aptos</th>
										<th>Resultados</th>
									</tr>
								</thead>

							
						
								<tbody>
									<?php foreach ($query as $registro): ?>
									<tr>
										<td>
										<?= $i ?>
										</td>
										<td>
											<dl>
												<dt><?= $registro->referencia ?> </dt>
												<dd><?= $registro->unidad ?></dd>
												<dd class="c-orange"><?= $registro->fecha ?></dd>
											</dl>
										</td>
										<td>						
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->nomfile); ?>" >
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
										</td>
										<td>
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->aptos); ?>">
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
										</td>
										<td>
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->nomfile2); ?>">
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
										</td>

									</tr>
									<?php $i++ ?>

                       				<?php endforeach; ?>
									
								</tbody>

								
							</table>

                   

                        <br>
					
                       				
			
					</div>

					<div class="row as">

					</div>

					<script>
						$(document).ready(function() {
						    $('#tabla_convoca').DataTable( {
						        "language": {
						            "lengthMenu": "Visualizando _MENU_ Registros por Página",
						            "zeroRecords": "Ningun Registro Encontrado",
						            "info": "Mostrando Páginas _PAGE_ de _PAGES_",
						            "infoEmpty": "No hay registros disponibles",
						            "infoFiltered": "(filtrado de _MAX_ total de registros)"
						        }
						    } );
						} );
					</script>
					


