<?= form_open_multipart('obras/insert', array('class'=>'form-horizontal')); ?>
	<legend> Crear Nuevo Obras y Infraestructuras  </legend>
	<?php 
		if (isset($error)) {
			echo $error ;
			# code...
		}
	?>
	 
	<?= my_validation_errors(validation_errors()); ?>

		<div class="control-group">
		<?= form_label('programa', 'programa', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'programa','id'=>'programa','placeholder'=>'programa....', 'value'=>set_value('programa'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('actividad', 'actividad', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'actividad','id'=>'actividad','placeholder'=>'actividad....', 'value'=>set_value('actividad'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('localizacion', 'localizacion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'localizacion','id'=>'localizacion','placeholder'=>'localizacion....', 'value'=>set_value('localizacion'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Fechaini', 'fechaini', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechaini','id'=>'fechaini','placeholder'=>'Fechaini....', 'value'=>set_value('fechaini'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('plazo', 'plazo', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'plazo','id'=>'plazo','placeholder'=>'plazo....', 'value'=>set_value('plazo'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Fechater', 'fechater', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechater','id'=>'fechater','placeholder'=>'Fechater....', 'value'=>set_value('fechater'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Resposable', 'responsable', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'responsable','id'=>'responsable','placeholder'=>'Resposable....', 'value'=>set_value('responsable'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('Inspector', 'inspector', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'inspector','id'=>'inspector','placeholder'=>'Inspector....', 'value'=>set_value('inspector'))); ?>
		</div>
	
		<div class="control-group">
		<?= form_label('Descripción', 'descripcion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'descripcion','id'=>'descripcion','placeholder'=>'Descripción....', 'value'=>set_value('descripcion'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('foto nº1', 'foto', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[0]",'id'=>'foto','placeholder'=>'foto....', 'value'=>set_value('foto'))); ?>
		</div>

		<!--div class="control-group">
		<?= form_label('foto nº2', 'foto1', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[1]",'id'=>'foto1','placeholder'=>'foto1....', 'value'=>set_value('foto1'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('foto nº3', 'foto2', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[2]",'id'=>'foto2','placeholder'=>'foto2....', 'value'=>set_value('foto2'))); ?>
		</div>

		<div class="control-group">
		<?= form_label('foto nº4', 'foto3', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[3]",'id'=>'foto3','placeholder'=>'foto3....', 'value'=>set_value('foto3'))); ?>
		</div>


		<div class="control-group">
		<?= form_label('foto nº5', 'foto4', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[4]",'id'=>'foto4','placeholder'=>'foto4....', 'value'=>set_value('foto4'))); ?>
		</div>

		<input type="file" id="prueba" onChange="cargar_otro_file()"-->
		<div id="loader"></div>
		<input id="agregar" type="button" value="agregar otro archivo" onclick="carga_otro_file()">

		<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>

		
		<?= anchor('obras/index', 'Cancelar', array('class'=>'btn')); ?>
		</div>	


<?= form_close(); ?>

<script>

	if($('#prueba').val()=='') {
		//alert('nohay');
	}
	function ver() {
		alert($('#prueba').val())
	}
	function carga_automatica() {
	}
	var i=0;
	function carga_otro_file() {
		i++;
		if(i<=5) {
			$('#loader').append('<div class="control-group"><label>foto nº '+(i+1)+'</label><input type="file" name="userfile['+i+']"></div>');
		}
	}
</script>