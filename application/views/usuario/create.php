
        <!-- right column -->
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Nuevo Registro</h3>
                  <?= my_validation_errors(validation_errors()); ?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form  action="<?= base_url('usuario/insert') ?>" method="post" class="form-horizontal ">
              <div class="box-body">

                <div class="form-group">
                  <label for="Nombre" class="col-sm-2 control-label" >Nombre</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" id="name" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="Login" class="col-sm-2 control-label" >Login</label>
                  <div class="col-sm-10">
                    <input type="text" name="login" class="form-control" id="login" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label for="email" class="col-sm-2 control-label" >Email</label>
                  <div class="col-sm-10">
                    <input type="email" name="email" class="form-control" id="email" value="" >
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="Perfil" name="perfil_id"class="col-sm-2 control-label" >Perfil</label>
                  <div class="col-sm-10">
                     <?= form_dropdown('perfil_id', $perfiles, 0); ?> 

                    <!-- <select class="form-control" name="perfil_id">
               
                      <?php foreach ($perfiles as $llave ): ?>
                        
                        <option>  <?=$llave; ?></option>
                   
                      <?php endforeach ?>
                    </select> -->
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


