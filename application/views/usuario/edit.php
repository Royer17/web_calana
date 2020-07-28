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
            <form  action="<?= base_url('usuario/update') ?>" method="post" class="form-horizontal ">
              <div class="box-body">
                <div class="form-group">
                  <label for="id" class="col-sm-2 control-label">ID</label>
                  <div class="col-sm-10">
                    <input type="text" name="id" class="form-control uneditable" id="id" value="<?= $registro->id; ?>" readonly>
                  </div>
                </div>

                <div class="form-group">
                  <label for="name" class="col-sm-2 control-label" >Nombre</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" id="name" value="<?= $registro->name; ?>" >
                  </div>
                </div>

                <div class="form-group">
                  <label for="login" class="col-sm-2 control-label" >Login</label>
                  <div class="col-sm-10">
                    <input type="text" name="login" class="form-control" id="login" value="<?= $registro->login; ?>" >
                  </div>
                </div>

                <div class="form-group">
                  <label for="email" class="col-sm-2 control-label" >Email</label>
                  <div class="col-sm-10">
                    <input type="email" name="email" class="form-control" id="email" value="<?= $registro->email; ?>" >
                  </div>
                </div>

                <div class="form-group">
                  <label for="Perfil" class="col-sm-2 control-label" >Perfil</label>
                  <div class="col-sm-10">
                     <?= form_dropdown('perfil_id', $perfiles, $registro->perfil_id); ?>

                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                   <?= anchor('usuario/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
                    <?= form_button(array('type'=>'submit', 'content'=>'<i class="fa fa-save"></i> Guardar Cambios', 'class'=>'btn btn-success pull-right')); ?>
               
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
        </div>
          <!-- /.box -->



