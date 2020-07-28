<?= form_open_multipart('publicaciones/insert', array('class'=>'form-horizontal')); ?>
	<legend> Crear Nueva Publicaciòn </legend>
	<?php 
		if (isset($error)) {
			echo $error ;
			# code...
		}
	?>

	<?php $tipodocumento=array('Ordenanza Municipal'=>'Ordenanza_Municipal',
							'Acuerdo de Concejo'=>'Acuerdo_de_Concejo',
							'Decreto de Alcaldia'=>'Decreto_de_Alcaldia',		 
							'Resolución de Alcaldia'=>'Resolución_de_Alcaldia',		 
							'Resolución de Gerencia Municipal'=>'Resolución_de_Gerencia_Municipal');		 
			  ?>
	 
	<?= my_validation_errors(validation_errors()); ?>



	
		<div class="control-group row as">
		<?= form_label('tipodocu', 'tipodocu', array('class'=>'control-label')); ?>
		<?= form_dropdown('tipodocu',$tipodocumento,array('class'=>'control-label')); ?>
		</div>

		<div class="control-group">
		<?= form_label('numdoc', 'numdoc', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'numdoc','id'=>'numdoc','placeholder'=>'numdoc....', 'value'=>set_value('numdoc'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('referenc', 'referenc', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'referenc','id'=>'referenc','placeholder'=>'referenc....', 'value'=>set_value('referenc'))); ?>
		</div>	

		<div class="control-group">
		<?= form_label('depeorig', 'depeorig', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'depeorig','id'=>'depeorig','placeholder'=>'depeorig....', 'value'=>set_value('depeorig'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('fechaemi', 'fechaemi', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechaemi','id'=>'fechaemi','placeholder'=>'fechaemi....', 'value'=>set_value('fechaemi'))); ?>
		</div>


		<div class="control-group">
		<?= form_label('Subir archivo', 'nomfile', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'nomfile','id'=>'nomfile','placeholder'=>'nomfile....', 'value'=>set_value('nomfile'))); ?>
		</div>
			
		<br>
		
		<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>
		<?= anchor('publicaciones/index2', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
		
	
		</div>


<?= form_close(); ?>
