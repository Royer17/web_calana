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
           <?php  $mes = array(
                  'Enero'   => '01',
                  'Febrero' => '02',
                  'Marzo' => '03',
                  'Abril'   => '04',
                  'Mayo'  => '05',
                  'Junio' => '06',
                  'Julio' => '07',
                  'Agosto'  => '08',
                  'Setiembre'   => '09',
                  'Octubre'   => '10',
                  'Noviembre' => '11',
                  'Diciembre'   => '12'


                );
      $dia = array(
                  '01'  => '01',
                  '02'  => '02',
                  '03'  => '03',
                  '04'  => '04',
                  '05'  => '05',
                  '06'  => '06',
                  '07'  => '07',
                  '08'  => '08',
                  '09'  => '09',
                  '10'  => '10',
                  '11'  => '11',
                  '12'  => '12',
                  '13'  => '13',
                  '14'  => '14',
                  '15'  => '15',
                  '16'  => '16',
                  '17'  => '17',
                  '18'  => '18',
                  '19'  => '19',
                  '20'  => '20',
                  '21'  => '21',
                  '22'  => '22',
                  '23'  => '23',
                  '24'  => '24',
                  '25'  => '25',
                  '26'  => '26',
                  '27'  => '27',
                  '28'  => '28',
                  '29'  => '29',
                  '30'  => '30',
                  '31'  => '31'


                );

                 ?>

            <?= my_validation_errors(validation_errors()); ?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?= form_open_multipart('noticias/insert2', array('class'=>'form-horizontal','id'=>'notitarea')); ?>
            
              <div class="box-body">

                <div class="form-group">
                  <label for="Titulo" class="col-sm-2 control-label" >Titulo</label>
                  <div class="col-sm-10">
                    <input type="text" name="vc_titulo_informacion" class="form-control" id="vc_titulo_informacion" value="">
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="RESUMEN" class="col-sm-2 control-label" >RESUMEN(PRIMER PARRAFO)</label>
                  <div class="col-sm-10">
                    <input type="text" name="vc_resumen_informacion" class="form-control" id="vc_resumen_informacion" value="">
                  </div>
                </div>                

                <div class="form-group">
                  <label for="CONTENIDO" class="col-sm-2 control-label" >CONTENIDO</label>
                  <div class="col-sm-10">
                   <input type="text" name="tx_contenido_informacion" class="form-control" id="tx_contenido_informacion" rows="10" cols="70" value=""> 
                 <!-- <textarea form="notitarea" name="tx_contenido_informacion" id="editor1" cols="80" rows="10" >                                          
                  </textarea> -->
                                      
                  </div>
                </div>

                <div class="form-group">
                  <label for="FECHA" class="col-sm-2 control-label" >FECHA</label>
                  <div class="col-sm-10">
                   <input type="date" name="dt_fecha_informacion" class="form-control" id="dt_fecha_informacion"  value=""> 
                 <!-- <textarea form="notitarea" name="tx_contenido_informacion" id="editor1" cols="80" rows="10" >                                          
                  </textarea> -->
                                      
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
                    <input type="text" name="ano" class="form-control" id="ano" value="<?= date("Y"); ?>">
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

                <input type="file" id="prueba" onChange="cargar_otro_file()"
                <div id="loader"></div>
                <input id="agregar" type="button" value="agregar otro archivo" onclick="carga_otro_file()">-->

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

  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor123')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
