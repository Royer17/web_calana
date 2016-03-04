
	<style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
	      width: 100%;
	      height: 362px;
	      margin: auto;
	  }
							  
	</style>

		<div class="row as">
						
			<ol class="miga breadcrumb">
			  <li><a href="#">Inicio</a></li>
			  <li><a href="#">Noticias</a></li>
			  <li class="active">Detalles de Noticia</li>

						
			</ol>
						

			<div>
				  <div id="demo" >
								     
								          <div class="col-sm-16 col-md-16">
								           	
											  
											  <div id="myCarousel" class="carousel slide" data-ride="carousel">
											    <!-- Indicators -->


											    <!-- Wrapper for slides -->
											    <div class="carousel-inner obras_carousel" role="listbox">


											      <div class="item active">
											            <img width="500" height="300" src=<?= base_url('img/noticia/'.$registro->foto1 ); ?>  /></a>

											      </div>
											  

											      <div class="item">
											         <img width="500" height="300" src=<?= base_url('img/noticia/'.$registro->foto2 ); ?> alt="imagen noticias" />

											      </div>	

											      <div class="item">
											        <img width="500" height="300" src=<?= base_url('img/noticia/'.$registro->foto3 ); ?> alt="imagen noticias" />

											      </div>



											  
											    </div>

											    <!-- Left and right controls -->
																

											     	 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" >
												      <span class="glyphicon glyphicon-chevron-left" style="margin-left:10px;" aria-hidden="true"></span>
												      <span class="sr-only">Previous</span>
												    </a>
												    <a class="right carousel-control " href="#myCarousel" role="button" data-slide="next">
												      <span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;" aria-hidden="true"></span>
												      <span class="sr-only">Next</span>
												    </a> 
											  </div>
										

								          </div>
								      
								    </div>	

			</div>


								  

			<table width="590" class="table table-striped table-bordered table-hover" style="font-family:Verdana;">


		        <tbody>
		                            	<tr>
		                            		<td>
		                            		<b>titulo</b>
			                           		</td>
			                           		<td style="color:#2980b9 !important;">  <?= $registro->vc_titulo_informacion ?> </a>
			                           		</td>
			                           	</tr>

			                            <tr>

			                            	<td><b>resumen</b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->vc_resumen_informacion ?>
				                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>contenido </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
													<?= $registro->tx_contenido_informacion ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Fecha de Información </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->dt_fecha_informacion ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Tipo </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->tipo ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>
			                            	<td><b>fecha </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		 <?= $registro->fecha ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>dia</b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->dia ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b> mes  </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->mes ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            <td><b>año</b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
													<?= $registro->ano ?>
												</div>
			                        	    </td>

			                        	</tr>


		                                             
		        </tbody>
		    </table>
					
	</div>







	

