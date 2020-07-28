<div id="body_content" class="efecto body_content_int">
  <section id="not-wrapper"><div class="cont_titulo">Coincidencias Encontradas</div>


  	<script type="text/javascript">
    jQuery(document).ready(function(){
      if(jQuery("#scroll-not").length>0){
        jQuery("#scroll-not").scrollInfinito({
          path				: 'pre_noticias_add.php',
          content			: 'scroll-not ul',
					wrapper_not : 'not-wrapper',
          offset			: 12,
          limit				: 16,
					buscar			: 'a=&m=',
          trabajando	: false,
          final				: false
        });
      }
    });
  </script>

<div id="scroll-not">
	<ul id="">
		<table id="tabla_noticia" class="table table-responsive" cellspacing="0" style ="width:100%;">
			<thead>
				<tr>
					<th> Busqueda </th>

				</tr>
			</thead>
			<tbody>
	
			<tr>
				<td>
					<?php foreach ($query as $registro): ?>
					<li data-url=<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?> class="enl_prin efecto">
						<div class="not_img"><img src="<?= base_url('img/noticia/'.$registro->foto ); ?>"></div>
						<div class="not_fch"><i class="fa fa-calendar" aria-hidden="true"></i> <?= $registro->dia ?> / <?= $registro->mes ?> / <?= $registro->ano ?></div>
						<div class="not_tit"><?= $registro->vc_titulo_informacion ?></div>
						<div class="not_resumen"><?= $registro->vc_resumen_informacion ?></div>
					</li>
					<?php endforeach; ?>
				</td>
			</tr>

		
</tbody>

		 </table>

	</ul>
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
