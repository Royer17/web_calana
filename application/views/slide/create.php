<?= form_open_multipart('noticias/insert', array('class'=>'form-horizontal')); ?>
	<legend> Crear Nuevas Noticias  </legend>
	<?php 
		if (isset($error)) {
			echo $error ;
			# code...
		}
	?>
	 
	<?= my_validation_errors(validation_errors()); ?>

		<div class="control-group row as">
		<?= form_label('TITULO', 'titulo_slide', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'titulo_slide','id'=>'titulo_slide','placeholder'=>'titulo_slide....', 'value'=>set_value('titulo_slide'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('Orden Slide', 'orden_slide', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'orden_slide','id'=>'orden_slide','placeholder'=>'orden_slide....', 'value'=>set_value('orden_slide'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('Hora', 'hora', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'hora',	'id'=>'hora',
		'placeholder'=>'hora....', 'value'=>set_value('hora'))); ?>
		
		</div>

		<div class="control-group row as">
		<?= form_label('DIA', 'dia', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'dia','id'=>'dia','placeholder'=>'dia....', 'value'=>set_value('dia'))); ?>
		</div>
	
		<div class="control-group row as">
		<?= form_label('MES', 'mes', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'mes','id'=>'mes','placeholder'=>'mes....', 'value'=>set_value('mes'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('AÑO', 'anno', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'anno','id'=>'anno','placeholder'=>'anno....', 'value'=>set_value('anno'))); ?>

		</div>

		<div class="control-group row as">
		<?= form_label('imagen slide', 'img_slide', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[0]",'id'=>'img_slide','placeholder'=>'img_slide....', 'value'=>set_value('img_slide'))); ?>
		</div>


		<div class="control-group row as">
		<?= form_label('Enlace', 'enlace', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'enlace','id'=>'enlace','placeholder'=>'enlace....', 'value'=>set_value('enlace'))); ?>
		</div>

		<!--div class="control-group row as">
		<?= form_label('foto nº2', 'foto1', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[1]",'id'=>'foto1','placeholder'=>'foto1....', 'value'=>set_value('foto1'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('foto nº3', 'foto2', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[2]",'id'=>'foto2','placeholder'=>'foto2....', 'value'=>set_value('foto2'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('foto nº4', 'foto3', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[3]",'id'=>'foto3','placeholder'=>'foto3....', 'value'=>set_value('foto3'))); ?>
		</div>


		<div class="control-group row as">
		<?= form_label('foto nº5', 'foto4', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[4]",'id'=>'foto4','placeholder'=>'foto4....', 'value'=>set_value('foto4'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('DIA', 'dia', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'dia','id'=>'dia','placeholder'=>'dia....', 'value'=>set_value('dia'))); ?>
		</div>

		<input type="file" id="prueba" onChange="cargar_otro_file()"-->
		<div id="loader"></div>
		<input id="agregar" type="button" value="agregar otro archivo" onclick="carga_otro_file()"> 
		<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>

		
		<?= anchor('noticias/index', 'Cancelar', array('class'=>'btn')); ?>
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
			$('#loader').append('<div class="control-group row as"><label>foto nº '+(i+1)+'</label><input type="file" name="userfile['+i+']"></div>');
		}
	}
</script>