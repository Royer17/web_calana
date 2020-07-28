<div class="row as">
						
	<ol class="miga breadcrumb">
		<li><a href="<?= base_url() ?>">Inicio</a></li>
		<li class="active">Sliders</li>
	</ol>
		
	<div class="article pull-left">
		<div class="article-title">
		 Nuestras Notas de Prensa
		</div>
	</div>

	<table id="tabla_slide" class="table table-bordered" cellspacing="0" style ="width:100%;">
		<thead>
			<tr>								
				<th>ORDENADO POR FECHA </th>							
			</tr>
		</thead>		

		<tbody>
			<?php foreach ($query3 as $file): ?>	
				<tr>
					<td style="width:100%">
						<a href=<?= base_url('slide/detalle/'.$file->id_slide ); ?>>
							<center style="color:#004F00; font-zize:25px; font-weight:bold; text-align:center;">
								<?= $file->titulo_slide ?>
							</center>
							
						</a> 
						<br>

					</td>
				</tr>
			<?php endforeach; ?>						
		</tbody>
	</table>   				
			
</div>





          <script>
            $(document).ready(function() {
                $('#tabla_slide').dataTable( {
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