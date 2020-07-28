<div class="row as">
	<ol class="miga breadcrumb">
		<li><a href="<?php echo base_url(); ?>">Inicio</a></li>
		<li><a href="#">Obras Y Proyectos</a></li>
		<li class="active">Infraestructura y Obras</li>
	</ol>

	<div class="article pull-left">
		<div class="article-title">
			Nuestras Obras 
		</div>
	</div>

</div>
	
<div class="row as">
	<!-- contenido -->
	<?php foreach ($query as $registro): ?>
	<table style="font-size:12px;font-family:Verdana;width:600px" class="cardprofile">
		<tbody>                                        
	        <tr>
	            <td height="15" colspan="4" style="border-bottom: 1px solid #004F00;">
				</td>
					</tr>
					<tr>
				<td width="15" style="border-bottom: 1px solid #004F00;padding-top:10px">	
				</td>
					<td valign="top">
						<b></b>
					<div style="text-align:justify;margin-right:10px;">
						<b><span style="color:#004F00;font-family:Verdana;font-size:12px;">
						<a style="color:#004F00 !important;font-weight:bold;" >
						<?= anchor('obras/detalle/'.$registro->id,$registro->actividad) ; ?>
						</a> 
						</span></b>
					</div>
					<br>
					<span style="font-size:11px;">
						<div style="text-align:justify">
							<table>
								<tbody>
									<tr>
										<td>
											<i><b>Periodo</b></i>
										</td>
										<td>:
											<i>2015</i>
										</td>
										<td width="15">														
										</td>
										<td><b><i>Inicio</i></b>
										</td>
										<td>: <?= $registro->fechaini ?></a></td>
									</tr>
									<tr>
										<td>
											<i><b>Categoría</b></i>
										</td>
										<td>:
											<i>Obras</i></td><td width="15"></td><td><b>
											<!-- <i>Inicio </i></b></td><td>:03 de marzo 2015 -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</span>
					<span style="float:right;margin-right:20px">
						<a style="color:#004F00 !important;font-weight:bold;" ><?= anchor('obras/detalle/'.$registro->id,"Ver Más") ; ?> </a>
					</span>
						<!--</td> -->
						<td style="border-bottom: 1px solid #004F00;">
							<img class="sombra" style="margin:5px" width="181" height="121" src=<?= base_url('img/obra/'.$registro->foto ); ?> >
						</td>

						<td style="border-bottom: 1px solid #004F00;" width="10" align="center">
						</td>
						
						</tr>
						<tr>																		
							<div style="text-align:justify;margin-right:10px;"><b>
						</tr>
						
		</tbody>
	</table>

                    <?php endforeach; ?>
                     <br>

</div>

<div class="row as">

</div>