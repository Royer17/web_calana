        <!-- right column -->
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Actualizar Registro </h3>

              	<?php
					if (isset($error)) {
						echo $error ;
						# code...
					}
				?>

      
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?= form_open_multipart('convocatoria/update', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">
                <div class="form-group" >
                  <div class="col-sm-2 control-label">
                    <?= form_label('ID', 'idnoti', array('class'=>'form-label')); ?>
                  </div>
                  
                  
                  <div class="col-sm-10">
                    <span class="uneditable-input"><?= $registro->idnoti ;?></span>
                    <?= form_hidden('idnoti', $registro->idnoti); ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="referencia" class="col-sm-2 control-label" >referencia</label>
                  <div class="col-sm-10">
                    <input type="text" name="referencia" class="form-control" id="referencia" value="<?= $registro->referencia; ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="Unidad" class="col-sm-2 control-label" >Unidad</label>
                  <div class="col-sm-10">
                    <input type="text" name="unidad" class="form-control" id="unidad" value="<?= $registro->unidad; ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="Año" class="col-sm-2 control-label" >Fecha</label>
                  <div class="col-sm-10">
                    <input type="date" name="fecha" class="form-control" id="fecha" value="<?= $registro->fecha; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="bases" class="col-sm-2 control-label" >Bases</label>
                  <div class="col-sm-10">
                    <?= form_input(array('type'=>'file','name'=>'bases','id'=>'bases')); ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="aptos" class="col-sm-2 control-label" >Aptos</label>
                  <div class="col-sm-10">
                    <?= form_input(array('type'=>'file','name'=>'aptos','id'=>'aptos')); ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="resultados" class="col-sm-2 control-label" >Resultados</label>
                  <div class="col-sm-10">
                    <?= form_input(array('type'=>'file','name'=>'resultados','id'=>'resultados')); ?>
                  </div>
                </div>



                
                


              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('convocatoria/index2', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
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



