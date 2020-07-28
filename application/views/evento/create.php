        <!-- right column -->
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Nuevo Registro</h3>

              	<?php
					if (isset($error)) {
						echo $error ;
						# code...
					}
				?>

                  <?= my_validation_errors(validation_errors()); ?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?= form_open_multipart('evento/insert', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">

                <div class="form-group">
                  <label for="Titulo" class="col-sm-2 control-label" >Titulo</label>
                  <div class="col-sm-10">
                    <input type="text" name="titulo_evento" class="form-control" id="titulo_evento" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="DIA" class="col-sm-2 control-label" >Dia</label>
                  <div class="col-sm-10">
                    <input type="text" name="dia" class="form-control" id="dia" value="<?= date("j"); ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="Mes" class="col-sm-2 control-label" >Mes</label>
                  <div class="col-sm-10">
                    <input type="text" name="mes" class="form-control" id="mes" value="<?=date("m"); ?>">

                   </div>
                </div>


                <div class="form-group">
                  <label for="Año" class="col-sm-2 control-label" >Año</label>
                  <div class="col-sm-10">
                    <input type="text" name="anno" class="form-control" id="anno" value="<?= date("Y"); ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="foto" class="col-sm-2 control-label">Foto</label>
                  <div class="col-sm-10">
                  	<!-- <input type="file" name="userfile[0]" id="foto">  -->
                  	<?= form_input(array('type'=>'file','name'=>"userfile[0]",'id'=>'foto','placeholder'=>'foto....', 'value'=>set_value('foto'))); ?>
                  	 <p class="help-block">Archivo debe estar en formato ".jpg" y no debe exceder 10Mb </p>
                  </div>
                 
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('evento/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
                    <?= form_button(array('type'=>'submit', 'content'=>'<i class="fa fa-save"></i> Guardar Cambios', 'class'=>'btn btn-success pull-right')); ?>
               
              </div>
              <!-- /.box-footer -->
            <?= form_close(); ?>
          </div>
        </div>
          <!-- /.box -->


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