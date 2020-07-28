
<div class="row">
	<div class="col-md-6 ">
     <?= anchor('ssadmin/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>


		<?= anchor('popup/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
	</div>
</div>
	
<br>
<div class="row">
        <div class="col-md-12 ">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"> Mantenimiento de Registros</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="tabla_popup2" class="table table-bordered">
                <thead>

                  <tr>
                    <th >ID</th>
                    <th>Enlace</th>
                    <th>Imagen</th>
                    <th >Visible</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                   

                  </tr>
                </thead>
                <tbody>
                <?php foreach ($query as $registro): ?>
                <tr>
                  <td><?= anchor('popup/edit/'.$registro->id_popup, $registro->id_popup); ?></td>
                  <td><?= $registro->enlace ?></td>
                  
                  <td>

                  	<img src="<?= base_url('img/popup/'.$registro->img_popup ); ?>" class="img-thumbnail"  style="width:50px">
                  </td>
                 
                              
                  <td >

                  	

                  		
                  		<?= $registro->visible ?> 
			            
			        
                  </td>
                  <td>

                                <?= anchor('popup/edit/'.$registro->id_popup, 'Actualizar', array('class'=>'btn btn-info')); ?></i>  </button>

                              </td>

                              <td>
                                
                                <?= anchor('popup/delete/'.$registro->id_popup, 'Eliminar', array('class'=>'btn btn-danger', 'onClick'=>"return confirm('¿Está Seguro?')")); ?>
                              </td>


                </tr>
                <?php endforeach; ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
                <div class="box-footer">
                   <?= anchor('ssadmin/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>
                                  
              </div>
          </div>
          <!-- /.box -->







<script>
	$(document).ready(function() {
		$('#tabla_popup2').dataTable( {
			"language": {
						"lengthMenu": "Visualizando _MENU_ Registros por Página",
						"zeroRecords": "Ningun Registro Encontrado",
						"info": "Mostrando Páginas _PAGE_ de _PAGES_",
						"infoEmpty": "No hay registros disponibles",
						"infoFiltered": "(filtrado de _MAX_ total de registros)",
						"infoFiltered": "(filtrado de _MAX_ total de registros)",
						"search":"Buscar",

						}
		} );
	} );
</script>
