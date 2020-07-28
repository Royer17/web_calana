					
					<div class="row as">
						
						
			
						<div class="article pull-left">
							<div class="cont_titulo">
								 Convocatorias 
							</div>
						</div>

										
					</div>
	
					<?php $i=1; ?>
					<div class="row ">
						<!-- contenido -->
			
							<!--  table -->
							<table id="tabla_convoca" class="table table-bordered table-responsive" cellspacing="0" style="width:100%">
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
											<?php if ($registro->bases): ?>
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->bases); ?>" >
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
											<?php endif ?>
										</td>
										<td>
											<?php if ($registro->aptos): ?>
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->aptos); ?>">
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
											<?php endif ?>
										</td>
										<td>
											<?php if ($registro->resultados): ?>
											<a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->resultados); ?>">
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
											</a>
											<?php endif ?>
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
                $('#tabla_convoca').dataTable( {
                    "language": {
                        "lengthMenu": "Visualizando _MENU_ Registros por Página",
                        "zeroRecords": "Ningun Registro Encontrado",
                        "info": "Mostrando Páginas _PAGE_ de _PAGES_",
                        "infoEmpty": "No hay registros disponibles",
                        "infoFiltered": "(filtrado de _MAX_ total de registros)",
                        "search":"Buscar",
                        "paginate": {
                          "first": "Primera",
                          "previous": "Anterior",
                          "next": "Siguiente"
                        }
                    }
                } );
            } );
          </script>