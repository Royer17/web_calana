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
            <?= form_open_multipart('slide/update', array('class'=>'form-horizontal')); ?>
            
              <div class="box-body">
                <div class="form-group" >
                  <div class="col-sm-2 control-label">
                    <?= form_label('ID', 'id_slide', array('class'=>'form-label')); ?>
                  </div>
                  
                  
                  <div class="col-sm-10">
                    <span class="uneditable-input"><?= $registro->id_slide ;?></span>
                    <?= form_hidden('id_slide', $registro->id_slide); ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="Titulo" class="col-sm-2 control-label" >Titulo</label>
                  <div class="col-sm-10">
                    <input type="text" name="titulo_slide" class="form-control" id="titulo_slide" value="<?= $registro->titulo_slide; ?>">
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
                    <input type="text" name="anno" class="form-control" id="anno" value="<?= $registro->anno; ?>">
                  </div>
                </div>


                <div class="form-group">
                  <label for="Año" class="col-sm-2 control-label" >Foto</label>
                  <div class="col-sm-10">
                    <img  class="img-thumbnail" src=<?= base_url('img/sliderPrincipal/'.$registro->img_slide ); ?> alt="foto"  style="width:300px">
                    <?= form_input(array('type'=>'file','name'=>'img_slide','id'=>'img_slide','value'=>$registro->img_slide)); ?>
                  </div>
                </div>

                


              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('slide/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
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



