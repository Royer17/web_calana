
<body>

	<div id="loading">
		<div>
			<div></div>		    
		    <div></div>
		</div>
	</div>

	<div id="wrapper">
		<div id="top">
			
			<div class="main-logo">
				<a href="<?=base_url();?>" onclick="return false;"><img witdh="150px" height="40px" src="<?= base_url()?>img/logomdcn2.png"></a>
			</div>
			
			<div class="m-nav"><i class="fa fa-bars"></i></div>

			<div class="profile-nav">
				<ul>
					<li class="profile-user-info">
						<a href="#" onclick="return false;">
							<img src="<?= base_url()?>img/user.png" class="user-img">
							<b>BIENVENIDO, </b><span><?= $this->session->userdata('usuario').'('.$this->session->userdata('perfil_name').')'; ?></span> <i class="fa fa-user"></i> <i class="fa fa-caret-down"></i>
						</a>
					</li>
					<li>
						<a href="<?=base_url();?>home/cambio_clave">
							<i class="fa fa-times-circle"></i> Cambiar Clave
						</a>
					</li>

					<li>
						<a href="<?=base_url();?>home/salir">
							<i class="fa fa-times-circle"></i> Logout
						</a>
					</li>
				</ul>
			</div>


		</div> <!-- /top -->
	</div>
	<!-- 
	<div id="wrapper">
		<div id="top">
			
			<div class="main-logo">
				<a href="#" onclick="return false;">
					<img src="images/user.jpg" class="user-img">
					<b>Welcome, </b><span><?= $this->session->userdata('usuario').'('.$this->session->userdata('perfil_name').')'; ?></span> <i class="fa fa-user"></i> <i class="fa fa-caret-down"></i>
				</a>
			</div>
			
			<div class="m-nav"><i class="fa fa-bars"></i></div>

			<div class="profile-nav">
				<ul>
					<li class="profile-user-info">
						
					</li>
					<li>
						<a href="#" onclick="return false;">
							<i class="fa fa-gear"></i> Settings
						</a>
					</li>
					<li>
						<a href="#" onclick="return false;" class="profile-badge-info">
							<i class="fa fa-envelope"></i> Messages
						</a>
						<span class="badge profile-badge blue">16</span>
					</li>
					<li>
						<a href="login.html">
							<i class="fa fa-times-circle"></i> Logout
						</a>
					</li>
				</ul>
			</div>

		</div> -->

		<!-- /top -->