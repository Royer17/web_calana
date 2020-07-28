
<div class="row">
	<div class="col-md-3 ">
		<form action="<?= base_url('usuario/search') ?>" method="post">

			<div class="input-group">
			    <input type="text" name="buscar" id="buscar" placeholder="Buscar" class="form-control">
			    <span class="input-group-addon"> <button type="submit" ><i class="glyphicon glyphicon-search"> </i> </button></span>
			</div>
		</form>
	</div>
	<div class="col-md-3 ">
		<?= anchor('usuario/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
	</div>
</div>
	

<div class="row">
        <div class="col-md-12 ">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"> Mantenimiento de Registros</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered">
                <tr>
                  <th >ID</th>
                  <th>Nombre</th>
                  <th>Login</th>
                  <th >Perfil</th>
                   <th >Email</th>
                  <th >Editar</th>
                  <th >Eliminar</th>
                 

                </tr>

                <?php foreach ($query as $registro): ?>
                <tr>
                  <td><?= anchor('usuario/edit/'.$registro->id, $registro->id); ?></td>
                  <td><?= $registro->name ?></td>
                  <td><?= $registro->login ?></td>
                  <td><?= $registro->perfil_name ?></td>
                  <td><?= $registro->email ?></td>
                                
                  

                  <td>

                  	<?= anchor('usuario/edit/'.$registro->id, 'Actualizar', array('class'=>'btn btn-info')); ?></i>  </button>

                  </td>

                  <td>
                  	
                  	<?= anchor('usuario/delete/'.$registro->id, 'Eliminar', array('class'=>'btn btn-danger', 'onClick'=>"return confirm('¿Está Seguro?')")); ?>
                  </td>
                </tr>
                <?php endforeach; ?>

              </table>
            </div>
            <!-- /.box-body -->
                <div class="box-footer">
                   <?= anchor('ssadmin/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
                                  
              </div>
          </div>
          <!-- /.box -->