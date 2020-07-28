
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>CPANEL</b></a>
  </div>


  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Bienvenido</p>



    <?= my_validation_errors(validation_errors()); ?>

      <form action="<?= base_url('home/ingresar') ?>" method="post">
        <div class="form-group has-feedback">
          <input type="text" name="login" id="login" class="form-control" placeholder="Username or Email">
          <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" name="password" id="password" class="form-control" placeholder="Password">
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
          <div class="col-xs-6">
            <a class="btn btn-info btn-block btn-flat" href="<?= base_url() ?>">Cancelar</a>
          </div>
          <!-- /.col -->
          <div class="col-xs-6">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Login</button>
          </div>
          <!-- /.col -->

        </div>
      </form>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->












<!-- jQuery 3 -->

<script src="<?= base_url('js/jquery.min.js')?>"></script>
<script src="<?= base_url('js/bootstrap.min.js')?>"></script>
<script src="<?= base_url('js/icheck.min.js')?>"></script>



<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
