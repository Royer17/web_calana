<!-- right column -->
<div class="col-md-12">
<!-- Horizontal Form -->
  <div class="box box-info">   </div>
  <div class="box-header with-border">
     <h3 class="box-title">Nuevo Registro</h3>

  </div>

  <!-- /.box-header -->
  <!-- form start -->
  <?= form_open_multipart('convocatoria/insert', array('class'=>'form-horizontal')); ?>

  <div class="box-body">

    <div class="form-group">
    <label for="referencia" class="col-sm-2 control-label" >Referencia</label>
    <div class="col-sm-10">
    <input type="text" name="referencia" class="form-control" id="referencia" value="">
    </div>
    </div>

    <div class="form-group">
    <label for="unidad" class="col-sm-2 control-label" >Unidad</label>
    <div class="col-sm-10">
    <input type="text" name="unidad" class="form-control" id="unidad" value="">
    </div>
    </div>


    <div class="form-group">
    <label for="fecha" class="col-sm-2 control-label" >Fecha</label>
    <div class="col-sm-10">
    <input type="date" name="fecha" class="form-control" id="fecha" value="">
    </div>
    </div>

    <div class="form-group">
    <label for="Bases" class="col-sm-2 control-label">Bases</label>
    <div class="col-sm-10">

    <?= form_input(array('type'=>'file','name'=>"bases",'id'=>'nomfile','placeholder'=>'nomfile....', 'value'=>set_value('foto'))); ?>
    <p class="help-block">Archivo debe estar en formato ".jpg" y no debe exceder 10Mb </p>
    </div>                 
    </div>

    <div class="form-group">
    <label for="aptos" class="col-sm-2 control-label">Aptos</label>
    <div class="col-sm-10">

    <?= form_input(array('type'=>'file','name'=>"aptos",'id'=>'aptos','placeholder'=>'aptos....', 'value'=>set_value('foto'))); ?>
    <p class="help-block">Archivo debe estar en formato ".jpg" y no debe exceder 10Mb </p>
    </div>                 
    </div>                

    <div class="form-group">
      <label for="nomfile2" class="col-sm-2 control-label">Resultados</label>
      <div class="col-sm-10">

      <?= form_input(array('type'=>'file','name'=>"nomfile2",'id'=>'nomfile2','placeholder'=>'foto....', 'value'=>set_value('foto'))); ?>
      <p class="help-block">Archivo debe estar en formato ".jpg" y no debe exceder 10Mb </p>
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
<!-- /.box -->


