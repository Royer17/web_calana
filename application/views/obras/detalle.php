
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
			  <li><a href="http://wwimagen obrasva.gob.pe/">Inicio</a></li>
			  <li><a href="#">Obras Y Proyectos</a></li>
			  <li><a href="#">Infraestructura y Obras</a></li>
			  <li class="active">Detalles de Obra</li>

						
			</ol>
						

			<div>
				  <div id="demo" >
								     
								          <div class="col-sm-16 col-md-16">
								           	
											  
											  <div id="myCarousel" class="carousel slide" data-ride="carousel">
											    <!-- Indicators -->


											    <!-- Wrapper for slides -->
											    <div class="carousel-inner obras_carousel" role="listbox">


											      <div class="item active">
											            <img width="500" height="300" src=<?= base_url('img/obra/'.$registro->foto ); ?>  /></a>

											      </div>
											  

											      <div class="item">
											         <img width="500" height="300" src=<?= base_url('img/obra/'.$registro->foto1 ); ?> alt="imagen obras" />

											      </div>	

											      <div class="item">
											        <img width="500" height="300" src=<?= base_url('img/obra/'.$registro->foto2 ); ?> alt="imagen obras" />

											      </div>

											      <div class="item">
											        <img src=<?= base_url('img/obra/'.$registro->foto3 ); ?> alt="Flower" width="500" height="300">

											      </div>


											      <div class="item">
											        <img width="500" height="300" src=<?= base_url('img/obra/'.$registro->foto4 ); ?> alt="imagen obras" />

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
		                            		<b>Programa</b>
			                           		</td>
			                           		<td style="color:#2980b9 !important;">  <?= $registro->programa ?> </a>
			                           		</td>
			                           	</tr>

			                            <tr>

			                            	<td><b>Actividad</b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->actividad ?>
				                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Localización </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
													<?= $registro->localizacion ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Fecha de Inicio </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->fechaini ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Plazo de Ejecución </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->plazo ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>
			                            	<td><b>Fecha de Término </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		 <?= $registro->fechater ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b>Responsable Técnico</b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->responsable ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            	<td><b> Inspector de Obra  </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
				                            		<?= $registro->inspector ?>
		 		                            	</div>
			                        	    </td>

			                        	</tr>

			                        	<tr>

			                            <td><b> Descripción de la Actividad </b>
			                            	</td>
				                            <td > 
				                            	<div style="text-align:justify">
													<?= $registro->descripcion ?>
												</div>
			                        	    </td>

			                        	</tr>


		                                             
		        </tbody>
		    </table>
					
	</div>







	

