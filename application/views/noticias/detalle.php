<div id="body_content" class="efecto body_content_int">
 	<section id="not-wrapper">
		<div class="cont_titulo">
			<div class="tit_izq">NOTAS DE PRENSA</div>
			<div class="tit_der enl_int">
				<a href="<?= base_url()?>noticias" title="Ver todas las notas de prensa"><i class="fa fa-angle-double-left" aria-hidden="true"></i> Ver Todas</a>
			</div>
		</div>
		<div id="not_det">
			<div id="det_tit"><?= $registro->vc_titulo_informacion ?> </div>

			<div id="det_ante_tit"> Por: Imagen Institucional</div>
			<div id="det_fecha"><i class="fa fa-calendar" aria-hidden="true"></i>  <?= $registro->dia ?> /<?= $registro->mes ?> /<?= $registro->ano ?></div>
			<div id="det_txt">
				<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);"><?= $registro->tx_contenido_informacion ?>
				</span>
			</div>
			<div id="det_img" class="padd_bottom_xl"><img src=<?= base_url('img/noticia/'.$registro->foto ); ?> ></div>
		</div>
	
	</section>
	<div class="separacion">
	</div>	
</div>