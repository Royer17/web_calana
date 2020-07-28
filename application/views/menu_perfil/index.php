<div class="page-header">
	<h1> Accesos <small> mantenimiento de registros </small> </h1>
</div>

<?= form_open('menu_perfil/search', array('class'=>'form-search')); ?>
	<?= form_input(array('type'=>'text', 'name'=>'buscar', 'id'=>'buscar', 'placeholder'=>'Buscar por Perfil...', 'class'=>'input-medium search-query')); ?>
	<?= form_button(array('type'=>'submit', 'content'=>'<i class="icon-search"> </i>', 'class'=>'btn')); ?>
	<?= anchor('menu_perfil/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
<?= form_close(); ?>

<table class="table table-condensed table-bordered">
	<thead>
		<tr>
			<th> ID </th>
			<th> Menú </th>
			<th> Perfil </th>
			<th> Editar </th>
			<th> Eliminar </th>

		</tr>
	</thead>

	<tbody>
		<?php foreach ($query as $registro): ?>
		<tr>
			<td> <?= anchor('menu_perfil/edit/'.$registro->id, $registro->id); ?> </td>
			<td> <?= $registro->menu_name ?> </td>
			<td> <?= $registro->perfil_name ?> </td>
			<td><?= anchor('menu_perfil/edit/'.$registro->id, 'Actualizar', array('class'=>'btn btn-green')); ?></i>  </button></td>
			<td> <?= anchor('menu_perfil/delete/'.$registro->id, 'Eliminar', array('class'=>'btn btn-red', 'onClick'=>"return confirm('¿Está Seguro?')")); ?></td>
	
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
