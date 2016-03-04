<style>
	input{
		width: 360px;
		
	}
</style>

<div style="margin-left:30px">
	<?= form_open('obras/update', array('class'=>'form-horizontal')); ?>
	<legend> Actualizar Registro </legend>
	<?php 
		if (isset($error)) {
			echo $error;
		}
	?>

	<?= my_validation_errors(validation_errors()); ?>

	<div class="form-group" >
		<?= form_label('ID', 'id', array('class'=>'form-label')); ?>
		<span class="uneditable-input"><?= $registro->id ;?></span>
		<?= form_hidden('id', $registro->id); ?>
	</div>
	
	<div class="form-group" >
		<?= form_label('programa', 'programa', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'programa','id'=>'programa','value'=>$registro->programa)); ?>
	</div>

	<div class="form-group">
		<?= form_label('actividad', 'actividad', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'actividad','id'=>'actividad','value'=>$registro->actividad)); ?>
	</div>

	<div class="form-group">
		<?= form_label('localizacion', 'localizacion', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'localizacion','id'=>'localizacion','value'=>$registro->localizacion)); ?>
	</div>

	<div class="form-group">
		<?= form_label('fechaini', 'fechaini', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechaini','id'=>'fechaini','value'=>$registro->fechaini)); ?>
	</div>

	<div class="form-group">
		<?= form_label('localizacion', 'localizacion', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'localizacion','id'=>'localizacion','value'=>$registro->localizacion)); ?>
	</div>

	<div class="form-group">
		<?= form_label('fechater', 'fechater', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechater','id'=>'fechater','value'=>$registro->fechater)); ?>
	</div>

	<div class="form-group">
		<?= form_label('responsable', 'responsable', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'responsable','id'=>'responsable','value'=>$registro->responsable)); ?>
	</div>

	<div class="form-group">
		<?= form_label('inspector', 'inspector', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'inspector','id'=>'inspector','value'=>$registro->inspector)); ?>
	</div>

	<div class="form-group">
		<?= form_label('descripcion', 'descripcion', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'descripcion','id'=>'descripcion','value'=>$registro->descripcion)); ?>
	</div>

	<!--div class="form-group">
		<?= form_label('foto', 'foto', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'foto','id'=>'foto','value'=>$registro->foto)); ?>
	</div>

	<div class="form-group">
		<?= form_label('foto1', 'foto1', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'foto1','id'=>'foto1','value'=>$registro->foto1)); ?>
	</div>

	<div class="form-group">
		<?= form_label('foto2', 'foto2', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'foto2','id'=>'foto2','value'=>$registro->foto2)); ?>
	</div>


	<div class="form-group">
		<?= form_label('foto3', 'foto3', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'foto3','id'=>'foto3','value'=>$registro->foto3)); ?>
	</div>


	<div class="form-group">
		<?= form_label('foto4', 'foto4', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'foto4','id'=>'foto4','value'=>$registro->foto4)); ?>
	</div-->

	<div id="loader"></div>
	<label for="">Id de foto</label><input type="text" id="numero">
	<input type="button" value="cargar input" onClick="carga_input()">

	<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>		
		<?= anchor('obras/index', 'Cancelar', array('class'=>'btn')); ?>
		<?= anchor('obras/delete/'.$registro->id , 'Eliminar', array('class'=>'btn btn-warning','onClick'=>"return confirm('¿Está Seguro?')")); ?>	
	</div>

<?= form_close(); ?>
	<script>
		function carga_input() {
			var i=$('#numero').val()
			if(i<=5) {
				$('#loader').append('<div class="control-group"><label>foto nº '+i+'</label><input type="file" name="userfile['+(i-1)+']"></div>');
			}
		}
	</script>

</div>