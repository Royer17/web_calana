
		<div id="content" class="clearfix">



			<div class="breadcrumbs">
				<a href=""><i class="fa fa-home"></i> Inicio  </a> <i class="fa fa-caret-right"> <?= $titulo ?> </i> 
			</div>


				<div class="fluid">

					<div class="widget grid12">
						<div class="widget-header">
							<div class="widget-title">
								<i class="fa fa-sign-blank"></i> Contenido
							</div>

						</div>
						<div class="widget-content pad10">

							<div class="icon-grp">
								
								
							</div>
							<div>
								<!-- contenido -->
								<?= $this->load->view($contenido) ?>


							</div>

						</div>
		
					</div> <!-- /widget -->

				</div> <!-- /fluid -->



		</div> <!-- /content -->
		