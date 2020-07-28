
		<div id="content" class="c-login clearfix">

			<div class="header">
					<a href="<?= base_url() ?>"><img width="40px" height="40px"  src="<?= base_url('img/logo1.png') ?>"> </a>
			</div> <!-- /header -->

			<div class="breadcrumbs">
				<i class="fa fa-key"></i> Login

			</div>

			<?= my_validation_errors(validation_errors()); ?>

			<?= form_open('home/ingresar', array('class'=>'form-horizontal')); ?>
				
			<div class="widget-content">
				<input type="text" name="login" id="login" placeholder="Username">
				<input type="password" name="password" id="password" placeholder="Password">
				<button class="btn btn-blue pull-right" type="submit" content="Ingresar" >Login</button>
				<a class="btn btn-green pull-left" href="<?= base_url() ?>">Cancelar</a>
			</div>
			
			
					
					

			

		</div> <!-- /content -->
		