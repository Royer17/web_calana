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
		<?= form_label('TITULO', 'vc_titulo_informacion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'vc_titulo_informacion','id'=>'vc_titulo_informacion','placeholder'=>'vc_titulo_informacion....', 'value'=>set_value('vc_titulo_informacion'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('RESUMEN(PRIMER PARRAFO)', 'vc_resumen_informacion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'vc_resumen_informacion','id'=>'vc_resumen_informacion','placeholder'=>'vc_resumen_informacion....', 'value'=>set_value('vc_resumen_informacion'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('CONTENIDO(TODA LA NOTA)', 'tx_contenido_informacion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'tx_contenido_informacion',	'id'=>'tx_contenido_informacion',
		'placeholder'=>'tx_contenido_informacion....', 'value'=>set_value('tx_contenido_informacion'))); ?>
		
		</div>

		<div class="control-group row as">
		<?= form_label('FECHA', 'dt_fecha_informacion', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'dt_fecha_informacion','id'=>'dt_fecha_informacion','placeholder'=>'dt_fecha_informacion....', 'value'=>set_value('dt_fecha_informacion'))); ?>
		</div>
		<br>

		<div class="control-group row as">
		<?= form_label('TIPO', 'tipo', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'tipo','id'=>'tipo','placeholder'=>'tipo....', 'value'=>set_value('tipo'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('FECHA', 'fecha', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fecha','id'=>'fecha','placeholder'=>'fecha....', 'value'=>set_value('fecha'))); ?>
		</div>

		<div class="control-group row as">
		<?= form_label('AREA', 'autor', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'autor','id'=>'autor','placeholder'=>'autor....', 'value'=>set_value('autor'))); ?>
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
		<?= form_label('AÑO', 'ano', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'ano','id'=>'ano','placeholder'=>'ano....', 'value'=>set_value('ano'))); ?>

		</div>

		<div class="control-group row as">
		<?= form_label('foto nº1', 'foto', array('class'=>'control-label')); ?>
		<?= form_input(array('type'=>'file','name'=>"userfile[0]",'id'=>'foto','placeholder'=>'foto....', 'value'=>set_value('foto'))); ?>
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