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
            <?= form_open_multipart('publicaciones/update', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">
                <div class="form-group" >
                  <div class="col-sm-2 control-label">
                    <?= form_label('ID', 'idnor', array('class'=>'form-label')); ?>
                  </div>
                  
                  
                  <div class="col-sm-10">
                    <span class="uneditable-input"><?= $registro->idnor ;?></span>
                    <?= form_hidden('idnor', $registro->idnor); ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="tipodocu" class="col-sm-2 control-label" >TIPO</label>
                  <div class="col-sm-10">
                    <input type="text" name="tipodocu" class="form-control" id="tipodocu" value="<?= $registro->tipodocu; ?>">
                  </div>
                </div>                

                <div class="form-group">
                  <label for="referenc" class="col-sm-2 control-label" >Referencia</label>
                  <div class="col-sm-10">
                    <input type="text" name="referenc" class="form-control" id="referenc" value="<?= $registro->referenc; ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="fechaemi" class="col-sm-2 control-label" >Fecha </label>
                  <div class="col-sm-10">
                    <input type="date" name="fechaemi" class="form-control" id="fechaemi" value="<?= $registro->fechaemi; ?>">
                  </div>
                </div>
                <!-- 
                <div class="form-group">
                  <label for="depeorig" class="col-sm-2 control-label" >Dependencia Origen</label>
                  <div class="col-sm-10">
                    <input type="text" name="depeorig" class="form-control" id="depeorig" value="<?= $registro->depeorig; ?>">
                  </div>
                </div>               -->

                <div class="form-group">
                  <label for="numdoc" class="col-sm-2 control-label" >Numero Documento</label>
                  <div class="col-sm-10">
                    <input type="text" name="numdoc" class="form-control" id="numdoc" value="<?= $registro->numdoc; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="nomfile" class="col-sm-2 control-label" >Archivo</label>
                  <div class="col-sm-10">
                    <?= form_input(array('type'=>'file','name'=>'nomfile','id'=>'nomfile')); ?>
                  </div>
                </div>
              
                


              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('publicaciones/index2', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
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



