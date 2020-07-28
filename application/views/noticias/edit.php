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
            <?= form_open_multipart('noticias/update2', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">
                <div class="form-group" >
                  <div class="col-sm-2 control-label">
                    <?= form_label('ID', 'in_id_informacion'); ?>
                  </div>
                  
                  
                  <div class="col-sm-10">
                    <span class="uneditable-input"><?= $registro->in_id_informacion ;?></span>
                    <?= form_hidden('in_id_informacion', $registro->in_id_informacion); ?>
                  </div>
                </div>

                <div class="form-group">
                  <label for="vc_titulo_informacion" class="col-sm-2 control-label" >Titulo</label>
                  <div class="col-sm-10">
                    <input type="text" name="vc_titulo_informacion" class="form-control" id="vc_titulo_informacion" value="<?= $registro->vc_titulo_informacion; ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="vc_resumen_informacion" class="col-sm-2 control-label" >Resumen</label>
                  <div class="col-sm-10">
                    <input type="text" name="vc_resumen_informacion" class="form-control" id="vc_resumen_informacion" value="<?= $registro->vc_titulo_informacion; ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="tx_contenido_informacion" class="col-sm-2 control-label" >Contenido</label>
                  <div class="col-sm-10">
                    <input type="text" name="tx_contenido_informacion" class="form-control" id="tx_contenido_informacion" value="<?= $registro->vc_titulo_informacion; ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="dt_fecha_informacion" class="col-sm-2 control-label" >Fecha</label>
                  <div class="col-sm-10">
                    <input type="date" name="dt_fecha_informacion" class="form-control" id="dt_fecha_informacion" value="<?= $registro->dt_fecha_informacion; ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label for="DIA" class="col-sm-2 control-label" >Dia</label>
                  <div class="col-sm-10">
                    <input type="text" name="dia" class="form-control" id="dia" value="<?= $registro->dia; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="Mes" class="col-sm-2 control-label" >Mes</label>
                  <div class="col-sm-10">
                    <input type="text" name="mes" class="form-control" id="mes" value="<?= $registro->mes; ?>">

                   </div>
                </div>


                <div class="form-group">
                  <label for="Año" class="col-sm-2 control-label" >Año</label>
                  <div class="col-sm-10">
                    <input type="text" name="ano" class="form-control" id="ano" value="<?= $registro->ano; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="foto" class="col-sm-2 control-label" >Foto</label>
                  <div class="col-sm-10">
                    <img  class="img-thumbnail" src=<?= base_url('img/noticia/'.$registro->foto ); ?> alt="foto"  style="width:300px">
                    <?= form_input(array('type'=>'file','name'=>'foto','id'=>'foto','value'=>$registro->foto)); ?>
                  </div>
                </div>

                


              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('noticias/index2', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
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



