
        <div class="col-md-12">
          <!-- Application buttons -->
          <div class="box">
            <div class="box-header">
              <p class="box-title"><center> 
            <legend> BIENVENIDOS AL PANEL DE ADMINISTRACION DEL SITIO WEB</legend> </center></p>
            </div>
            <center> 
            <div class="box-body">
             <p>   </p>
              <?php if( $is_admin ){ ?>
              <a class="btn btn-app" href="<?= base_url();?>usuario">
                <i class="fa fa-users"></i> Users
              </a>
              <?php } ?>


              <?php if( $is_admin ){ ?>
              <a class="btn btn-app" href="<?= base_url();?>perfil">
                <i class="fa fa-edit"></i> Perfiles
              </a>
              <?php } ?>


              <?php if( $is_admin | $is_imagen_institucional ){ ?>
              <a class="btn btn-app" href="<?= base_url();?>noticias/index2">
                <i class="fa fa-newspaper-o"></i> Noticias
              </a>   
              <?php } ?>


              <?php if( $is_admin  | $is_imagen_institucional ){ ?>          
              <a class="btn btn-app" href="<?= base_url();?>evento/index2">
                <i class="fa fa-newspaper-o"></i> Eventos
              </a> 
              <?php } ?>
    

              <?php if( $is_admin ){ ?>         
              <a class="btn btn-app" href="<?= base_url();?>popup/index">
                <i class="fa fa-newspaper-o"></i> Popup
              </a>
              <?php } ?>


              <?php if( $is_admin ){ ?>
              <a class="btn btn-app" href="<?= base_url();?>slide">
                <i class="fa fa-picture-o"></i> Slide Principal
              </a>
              <?php } ?>


              <?php if( $is_admin | $is_personal ){ ?>
              <a class="btn btn-app" href="<?= base_url();?>convocatoria/index2">
                <i class="fa fa-bullhorn"></i> Convocatorias
              </a>
              <?php } ?>


              <?php if( $is_admin | $is_secretaria_municipal){ ?>
              <a class="btn btn-app" href="<?= base_url();?>publicaciones/index2">
                <i class="fa fa-file-pdf-o"></i> Publicaciones
              </a>
              <?php } ?>

            </div>

            </center>
            <!-- /.box-body -->
          </div>