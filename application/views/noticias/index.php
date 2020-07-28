<div id="" class="efecto body_content_int">
  <section id="not-wrapper"><div class="cont_titulo">NOTAS DE PRENSA</div>




<div id="">
	
		<table id="tabla_noticia" class="table table-responsive" cellspacing="0" style ="width:100%;">
			<thead>
				<tr>
					<th>NOTICIAS </th>

				</tr>
			</thead>
			<tbody>
	
			<tr>
				<td>
					<div style="text-align:center" >
							<?php foreach ($query as $registro): ?>
						<a href=<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?> > 
						<div style="font-size: 15px ; font-weight: bold; text-transform:uppercase; font-family:Arial Black"><?= $registro->vc_titulo_informacion ?></div>
						<div class=" ">

							<img style="witdh:200px; height:250px; border: green 1px solid;" src="<?= base_url('img/noticia/'.$registro->foto ); ?>"></div>
							</a>
						<div ><i class="fa fa-calendar" aria-hidden="true"></i> Fecha :   <?= $registro->dia ?> / <?= $registro->mes ?> / <?= $registro->ano ?></div>
						<div></div>
						<div style="font-size: 12px ; font-family:Comic Sans MS cursive, sans-serif" ><?= $registro->vc_resumen_informacion ?></div>
						<br><br>

					
					<?php endforeach; ?>



					</div>	
				</td>
			</tr>

		
</tbody>

		 </table>

	
</div>
</section>	

</div>


<script>
	$(document).ready(function() {
		$('#tabla_noticia').dataTable( {
			 
			"language": {
						"lengthMenu": "Visualizando _MENU_ Registros por Página",
						"zeroRecords": "Ningun Registro Encontrado",
						"info": "Mostrando Páginas _PAGE_ de _PAGES_",
						"infoEmpty": "No hay registros disponibles",
						"infoFiltered": "(filtrado de _MAX_ total de registros)",
						"infoFiltered": "(filtrado de _MAX_ total de registros)",
						"search":"Buscar",
						"paginate": {
						      "first": "Primera",
						      "previous": "Anterior",
						      "next": "Siguiente"
						    }

						},


			"pagingType": "full_numbers" 
		} );
	}


	 );
</script>
