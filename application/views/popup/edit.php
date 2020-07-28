       <?php $visibilidad=array('SI'=>'SI',
              'NO'=>'NO');     
        ?>
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
            <?= form_open_multipart('popup/update', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">
                <div class="form-group" >
                  <div class="col-sm-2 control-label">
                    <?= form_label('ID', 'id_popup', array('class'=>'form-label')); ?>
                  </div>
                  
                  
                  <div class="col-sm-10">
                    <span class="uneditable-input"><?= $registro->id_popup ;?></span>
                    <?= form_hidden('id_popup', $registro->id_popup); ?>
                  </div>
                </div>

                    <div class="control-group row as">
               
                     <label for="visible" class="col-sm-2 control-label" >Visible</label>
                      <div class="col-sm-10">
                     
                       <?= form_dropdown('visible', $visibilidad, $registro->visible); ?>
                   </div>
                  </div>

                <div class="form-group">
                  <label for="enlace" class="col-sm-2 control-label" >enlace</label>
                  <div class="col-sm-10">
                    <input type="text" name="enlace" class="form-control" id="enlace" value="<?= $registro->enlace; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="Año" class="col-sm-2 control-label" >Foto</label>
                  <div class="col-sm-10">
                    <img  class="img-thumbnail" src=<?= base_url('img/popup/'.$registro->img_popup ); ?> alt="foto"  style="width:300px">
                    <?= form_input(array('type'=>'file','name'=>'img_popup','id'=>'img_popup','value'=>$registro->img_popup)); ?>
                  </div>
                </div>

                


              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('popup/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
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



