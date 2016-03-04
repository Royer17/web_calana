<style>
	input{
		width: 360px;
		
	}
</style>

<div style="margin-left:30px">
	<?= form_open('convocatoria/update', array('class'=>'form-horizontal')); ?>
	<legend> Actualizar Registro </legend>

	<?= my_validation_errors(validation_errors()); ?>

	<div class="form-group" >
		<label for="" class="col-lg-2 control-label"> ID </label>
		<div class="col-lg-10">
			<span class="uneditable-input"><?= $registro->idnoti ;?></span>
			<?= form_hidden('id', $registro->idnoti); ?>
		</div>
	</div>
	
	<div class="form-group" >	
		<label for="" class="col-lg-2 control-label"> Referencia </label>
		<div class="col-lg-10">
			<?= form_input(array('type'=>'descripcion','name'=>'unidad','id'=>'unidad','value'=>$registro->referencia)); ?>
		
		</div>
	</div>

	<div class="form-group">
		<?= form_label('unidad', 'unidad', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'unidad','id'=>'unidad','value'=>$registro->unidad)); ?>
	</div>

	<div class="form-group">
		<?= form_label('fecha', 'fecha', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fecha','id'=>'fecha','value'=>$registro->fecha)); ?>
	</div>

	<div class="form-group">
		<?= form_label('nomfile', 'nomfile', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'nomfile','id'=>'nomfile','value'=>$registro->nomfile)); ?>
	</div>

	<div class="form-group">
		<?= form_label('aptos', 'aptos', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'aptos','id'=>'aptos','value'=>$registro->aptos)); ?>
	</div>

	<div class="form-group">
		<?= form_label('nomfile2', 'nomfile2', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'nomfile2','id'=>'nomfile2','value'=>$registro->nomfile2)); ?>
	</div>

	<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>		
		<?= anchor('convocatoria/index', 'Cancelar', array('class'=>'btn')); ?>
		<?= anchor('convocatoria/delete/'.$registro->idnoti , 'Eliminar', array('class'=>'btn btn-warning','onClick'=>"return confirm('¿Está Seguro?')")); ?>	
	</div>

<?= form_close(); ?>

</div>