					<div class="row as">
						
						<ol class="miga breadcrumb">
						  <li><a href="<?= base_url('') ?>">Inicio</a></li>
						  <li><a href="">Publicaciones Emitidas</a></li>	
						  <li class="active"> <?= $titulo ?> </li>		
						</ol>
			
						<div class="article pull-left">
							<div class="article-title">
								 Publicaciones Emitidas 
							</div>
						</div>

<div class="row">
  <div class="col-md-3 ">


    <?= anchor('publicaciones/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
  </div>
</div>
  

										
					</div>
	
					<?php $i=1; ?>
					<div class="row as">
						<!-- contenido -->
			
							<!--  table -->
							<table id="tabla_pub" class="table table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
									
										<th>Nº</th>
										<th>Nombre</th>
										<th>Resumen</th>
										<th>Seccion</th>
										<th>Fecha</th>
										<th>Enlace</th>	
										<th >Editar</th>
                    					<th >Eliminar</th>
                   									
									</tr>
								</thead>
													
								<tbody>
									<?php foreach ($query as $registro): ?>
									<tr>
										<!-- <td>
											<a href=<?= base_url('publicaciones/edit/'.$registro->idnor) ?>  >   <span class="glyphicon glyphicon-edit"></span> </a>
										</td> -->
										<td>
										
										 <?= $i ?> 
										</td>
										<td>
											<?= $registro->numdoc ?>	
										</td>
										<td>						
											<?= $registro->referenc ?>	
										</td>
										<td>
											<?= $registro->tipodocu ?>	
										</td>
										<td>
											<?= $registro->fechaemi ?>	
										</td>										
										<td>
											<a target="_blank" href="<?= base_url('portaltransparencia/publicaciones/'.$registro->nomfile ); ?>">
												<img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">

											</a>
										</td>

					                    <td>

					                      <?= anchor('publicaciones/edit/'.$registro->idnor, 'Actualizar', array('class'=>'btn btn-info')); ?></i>  </button>

					                    </td>

					                    <td>
					                      
					                      <?= anchor('publicaciones/delete/'.$registro->idnor, 'Eliminar', array('class'=>'btn btn-danger', 'onClick'=>"return confirm('¿Está Seguro?')")); ?>
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
						    $('#tabla_pub').dataTable( {
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
