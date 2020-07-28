<div class="row">
  <div class="col-md-6 ">
                       <?= anchor('ssadmin/index', '<i class="fa fa-circle"></i> Regresar', array('class'=>'btn btn-info')); ?>

      <?= anchor('convocatoria/create', 'Agregar', array('class'=>'btn btn-primary')); ?>
<!--    <form action="<?= base_url('convocatoria/search') ?>" method="post">

      <div class="input-group">
          <input type="text" name="buscar" id="buscar" placeholder="Buscar" class="form-control">
          <span class="input-group-addon"> <button type="submit" ><i class="glyphicon glyphicon-search"> </i> </button></span>
      </div>
    </form> -->
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
              <table id="tabla_convoca123" class="table table-bordered" cellspacing="0" style="width:100%">
                <thead>

                  <tr>
                    <th >ID</th>
                    <th>Descripcion</th>
                    <th>Unidad</th>
                    <th>fecha</th>
                    <th>Bases</th>
                    <th >Aptos</th>
                    <th >Resultados</th>
                    <th >Editar</th>
                    <th >Eliminar</th>
                   

                  </tr>
                </thead>
                <tbody>

                  <?php foreach ($query as $registro): ?>
                  <tr>
                    <td><?= anchor('convocatoria/edit/'.$registro->idnoti, $registro->idnoti); ?></td>
                    <td><?= $registro->referencia ?></td>
                    <td><?= $registro->unidad ?></td>
                    <td><?= $registro->fecha ?></td>
                    <td>

                        <?php if ($registro->bases): ?>
                      <a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->bases); ?>" >
                        <img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
                      </a>
                    <?php endif ?>


                    </td>
                    <td>

                        <?php if ($registro->aptos): ?>
                      <a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->aptos); ?>" >
                        <img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
                      </a>
                    <?php endif ?>


                    </td>
                    <td>

                        <?php if ($registro->resultados): ?>
                      <a target="_blank" href="<?= base_url('portaltransparencia/convocatoria/'.$registro->resultados); ?>" >
                        <img class="img-responsive" src="<?= base_url('img/pdf.png') ?>" width="50px">
                      </a>
                    <?php endif ?>


                    </td>


                    <td>

                      <?= anchor('convocatoria/edit/'.$registro->idnoti, 'Actualizar', array('class'=>'btn btn-info')); ?></i>  </button>

                    </td>

                    <td>
                      
                      <?= anchor('convocatoria/delete/'.$registro->idnoti, 'Eliminar', array('class'=>'btn btn-danger', 'onClick'=>"return confirm('¿Está Seguro?')")); ?>
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
                $('#tabla_convoca123').dataTable( {
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
