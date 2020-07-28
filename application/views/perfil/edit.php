        <!-- right column -->
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Actualizar Registro</h3>
                  <?= my_validation_errors(validation_errors()); ?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form  action="<?= base_url('perfil/update') ?>" method="post" class="form-horizontal ">
              <div class="box-body">
                <div class="form-group">
                  <label for="id" class="col-sm-2 control-label">ID</label>
                  <div class="col-sm-10">
                    <input type="text" name="id" class="form-control uneditable" id="id" value="<?= $registro->id; ?>" readonly>
                  </div>
                </div>

                <div class="form-group">
                  <label for="name" class="col-sm-2 control-label" >Perfil</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" id="name" value="<?= $registro->name; ?>" >
                  </div>
                </div>

               

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('perfil/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
                    <?= form_button(array('type'=>'submit', 'content'=>'<i class="fa fa-save"></i> Guardar Cambios', 'class'=>'btn btn-success pull-right')); ?>
               
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
        </div>
          <!-- /.box -->



