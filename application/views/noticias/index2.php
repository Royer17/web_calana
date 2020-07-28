
<div class="row">
  <div class="col-md-3 ">


    <?= anchor('noticias/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
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
              
              <table id="tabla_noticia123" class="table table-bordered" cellspacing="0" style="width:100%">

                <thead>
                  <tr>
                    <th >ID</th>
                    <th>Titulo</th>
                    <th>Resumen</th>
                    <th >Contenido</th>         
                    <th >Fecha</th>
                    <th >Imagen</th>

                    <th>Editar</th>
                    <th>Eliminar</th>
                   

                  </tr>
                </thead>
                <tbody>

                <?php foreach ($query as $registro): ?>
                <tr>
                  <td><?= anchor('noticias/edit/'.$registro->in_id_informacion, $registro->in_id_informacion); ?></td>
                  <td><?= $registro->vc_titulo_informacion ?></td>
                               
                  <td>
                      <?= $registro->vc_resumen_informacion ?>
                  </td>           
                  <td >                   
                     
                      <?= $registro->tx_contenido_informacion ?>
                               
                  </td>
                  <td >                   
                     
                      <?= $registro->dt_fecha_informacion ?>
                               
                  </td>

                  <td>

                    <img src="<?= base_url('img/noticia/'.$registro->foto ); ?>" class="img-thumbnail"  style="width:50px">
                  </td>

                  <td>

                    <?= anchor('noticias/edit/'.$registro->in_id_informacion, 'Actualizar', array('class'=>'btn btn-info')); ?></i>  </button>

                  </td>

                  <td>
                    
                    <?= anchor('noticias/delete/'.$registro->in_id_informacion, 'Eliminar', array('class'=>'btn btn-danger', 'onClick'=>"return confirm('¿Está Seguro?')")); ?>
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
                $('#tabla_noticia123').dataTable( {
                    "language": {
                        "lengthMenu": "Visualizando _MENU_ Registros por Página",
                        "zeroRecords": "Ningun Registro Encontrado",
                        "info": "Mostrando Páginas _PAGE_ de _PAGES_",
                        "infoEmpty": "No hay registros disponibles",
                        "infoFiltered": "(filtrado de _MAX_ total de registros)",
                        "search":"Buscar",
                        "paginate": {
                          "first": "Primera",
                          "previous": "Anterior",
                          "next": "Siguiente"
                        }
                    }
                } );
            } );
          </script>
