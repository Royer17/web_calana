					<div class="row as">
						
						<ol class="miga breadcrumb">
						  <li><a href="http://www.municiudadnueva.gob.pe/">Inicio</a></li>
						  <li><a href="#">Noticias</a></li>
						  <li class="active">Notas de Prensa</li>
						</ol>
						<button value="create">
							<a style="color:#2980b9 !important;font-weight:bold;" >
							<?= anchor('noticias/create/') ; ?></a> 

						</button>
		
						<div class="article pull-left">
							<div class="article-title">
								 Nuestras Notas de Prensa
							</div>
						</div>

										
					</div>
	

					<div class="row as">
						<!-- contenido 
						<?php foreach ($query as $registro): ?>

						<div class="col-sm-16 col-md-8" style="visibility:visible; animation-delay:0.5s ; animation-name: fadeInDown">
							<a href="" title="">
								<?= anchor('noticias/detalle/'.$registro->id,$registro->vc_titulo_informacion) ; ?>
								<img class="img-thumbnail" src=<?= base_url('img/noticia/'.$registro->foto ); ?> >
							</a>
							
						</div>

						<?php endforeach; ?> 

						-->

						<?php foreach ($query as $registro): ?>
			
							<table style="font-size:12px;font-family:Verdana;width:600px" class="cardprofile">
	                            <tbody>                                        
	                                <tr>
	                                	<td height="15" colspan="4" style="border-bottom: 1px solid #2980b9;">
										</td>
									</tr>
									<tr>
										<td width="15" style="border-bottom: 1px solid #2980b9;padding-top:10px">	
										</td>
										<td valign="top">
											<b></b>
											<div style="text-align:justify;margin-right:10px;">
												<b>	<span style="color:#2980b9;font-family:Verdana;font-size:12px;">
												<a style="color:#2980b9 !important;font-weight:bold;" >
													<?= anchor('noticia/detalle/'.$registro->in_id_informacion,$registro->vc_titulo_informacion) ; ?></a> 
												</span></b>
											</div>
											<br>
											<span style="font-size:11px;">
												<div style="text-align:justify">

													<table>
														<tbody>
															<tr>
																<td>
																	<i><b>titulo</b></i>
																</td>
																<td>:
																	<i><?= $registro->in_id_informacion ?></i>

																	<i><?= $registro->vc_titulo_informacion ?></i>
																</td>
																<td width="15">														
																</td>
																<td><b><i>Inicio</i></b>
																</td>
																<td>: <?= $registro->dt_fecha_informacion ?></a></td>
															</tr>
															<tr>
																<td><i><b>Categoría</b></i>
																</td>
																<td>:
																 <i><?= $registro->tipo ?></i></td><td width="15"></td><td><b>
																 <!-- <i>Inicio </i></b></td><td>:03 de marzo 2015 -->
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</span>
											<span style="float:right;margin-right:20px">
												<a style="color:#2980b9 !important;font-weight:bold;" ><?= anchor('noticias/detalle/'.$registro->in_id_informacion,"Ver Más") ; ?> </a>
											</span>

											</td>

											<td style="border-bottom: 1px solid #2980b9;">
										 
											 <img class="sombra" style="margin:5px" width="181" height="121" src=<?= base_url('img/noticia/'.$registro->foto ); ?> >
											</td>

										 <td style="border-bottom: 1px solid #2980b9;" width="10" align="center">
										 	
										 </td>

										</tr>
										<tr>
																			
											</td>

											<div style="text-align:justify;margin-right:10px;"><b>
										</tr>
								</tbody>
	                        </table>

                        <?php endforeach; ?>



                       				
			
					</div>

					<div class="row as">

					</div>