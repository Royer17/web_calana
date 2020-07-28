<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<?=base_url();?>ssadmin" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"> <b>A</b>MDC</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"> <img type="image/png" src="<?= base_url('img/logo4.png') ?>" width="30px" />  <b>Admin</b>MDC</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->

          <!-- /.messages-menu -->

          <!-- Notifications Menu -->

          <!-- Tasks Menu -->

          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<?=base_url();?>img/user2-160x160.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><?= $this->session->userdata('usuario').'('.$this->session->userdata('perfil_name').')'; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<?=base_url();?>img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                 <?= $this->session->userdata('usuario'); ?> - 
                 <?= $this->session->userdata('perfil_name'); ?>
                 
                </p>
              </li>
              <!-- Menu Body -->

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?=base_url();?>home/cambio_clave" class="btn btn-default btn-flat">Cambiar Clave </a>
                </div>
                <div class="pull-right">
                  <a href="<?=base_url();?>home/salir" class="btn btn-default btn-flat">Cerrar Sesión </a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->

        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?=base_url();?>img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= $this->session->userdata('usuario'); ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MODULOS</li>
        <!-- Optionally, you can add icons to the links -->
        <?php if( $is_admin ){ ?>
          <li class="active"><a href="<?= base_url();?>usuario"><i class="fa fa-link"></i> <span>USUARIOS</span></a></li>
        <?php } ?>

        <?php if( $is_admin ){ ?>
        <li><a href="<?= base_url();?>perfil"><i class="fa fa-link"></i> <span>PERFILES</span></a></li>
        <?php } ?>


        <?php if( $is_admin | $is_imagen_institucional ){ ?>
        <li><a href="<?= base_url();?>noticias/index2"><i class="fa fa-link"></i> <span>NOTICIAS</span></a></li>
        <?php } ?>


        <?php if( $is_admin ){ ?>
        <li><a href="<?= base_url();?>slide"><i class="fa fa-link"></i> <span>SLIDE PRINCIPAL</span></a></li>
        <?php } ?>


        <?php if( $is_admin  | $is_imagen_institucional ){ ?>
        <li><a href="<?= base_url();?>evento"><i class="fa fa-link"></i> <span>EVENTOS</span></a></li>
        <?php } ?>


        <?php if( $is_admin ){ ?>
        <li><a href="<?= base_url();?>popup"><i class="fa fa-link"></i> <span>POPUP</span></a></li>
        <?php } ?>


        <?php if( $is_admin | $is_personal ){ ?>
        <li><a href="<?= base_url();?>convocatoria/index2"><i class="fa fa-link"></i> <span>CONVOCATORIAS</span></a></li>
        <?php } ?>


        <?php if( $is_admin | $is_secretaria_municipal){ ?>
        <li><a href="<?= base_url();?>publicaciones/index2"><i class="fa fa-link"></i> <span>PUBLICACIONES</span></a></li>
        <?php } ?>  

        <!-- 
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Avanzado</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-right pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?= base_url();?>menu">MENU</a></li>
            <li><a href="<?= base_url();?>menu_perfil">MENU PERFILES</a></li>
          </ul>
        </li>
      </ul> -->
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?= $titulo ?>
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?= base_url();?>ssadmin"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active"><?= $titulo ?> </li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->

        <?= $this->load->view($contenido) ?>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
