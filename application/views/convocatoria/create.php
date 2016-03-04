<?= form_open_multipart('convocatoria/insert', array('class'=>'form-horizontal')); ?>
	<legend> Crear Nuevo conovocatoria y Infraestructuras  </legend>
	<?php 
		if (isset($error)) {
			echo $error ;
			# code...
		}
	?>
	 
	<?= my_validation_errors(validation_errors()); ?>

		<div class="control-group">
		<?= form_label('referencia', 'referencia', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'referencia','id'=>'referencia','placeholder'=>'referencia....', 'value'=>set_value('referencia'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('unidad', 'unidad', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'unidad','id'=>'unidad','placeholder'=>'unidad....', 'value'=>set_value('unidad'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('fecha', 'fecha', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fecha','id'=>'fecha','placeholder'=>'fecha....', 'value'=>set_value('fecha'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Bases', 'nomfile', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'userfile','id'=>'nomfile','placeholder'=>'nomfile....', 'value'=>set_value('nomfile'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Aptos', 'aptos', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'userfile','id'=>'aptos','placeholder'=>'aptos....', 'value'=>set_value('aptos'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Resultados', 'nomfile2', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'userfile','id'=>'nomfile2','placeholder'=>'nomfile2....', 'value'=>set_value('nomfile2'))); ?>
		</div>
			
		<br>
		
		<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>

		
		<?= anchor('convocatoria/', 'Cancelar', array('class'=>'btn btn-success')); ?>
		</div>


<?= form_close(); ?>
