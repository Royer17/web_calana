<section id='noticias'>

  <div class='cont_titulo'>
            
    <div class='tit_izq'>NOTICIAS</div>
                
    <div class='tit_der'><a href='<?= base_url('noticias/')?>' title='Ver todas las noticias'>Ver Todas <i class='fa fa-angle-double-right' aria-hidden='true'></i></a></div>
  </div>

  <div id='noticias_sli'>

    <ul id='not_slider'>
      <?php foreach ($query as $registro): ?> 
      <li>
      <div class='not_bk' style=''></div>
      <a href='<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?>'><img src='<?= base_url('img/noticia/'.$registro->foto ); ?>' title='<?= $registro->vc_titulo_informacion ?>'></a>
      </li>

      <?php endforeach; ?>
    </ul>
  </div>

  <div id='noticias_list'>
    <ul>
      <?php foreach ($query as $registro): ?> 
      <li class='efecto' data-url=''>
        <div class='not_img'>
          <a href='<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?>' title='<?= $registro->vc_titulo_informacion ?> '>
            <img src='<?= base_url('img/noticia/'.$registro->foto ); ?> '>
          </a>
        </div>
        <div class='not_fch'>
          <i class='fa fa-calendar' aria-hidden='true'> </i> <?= $registro->dia ?> , de <?= $registro->mes ?> del <?= $registro->ano ?>
        </div>
        <div class='not_tit'>
          <a href='<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?>' title='<?= $registro->vc_titulo_informacion ?> '>
            <?= $registro->vc_titulo_informacion ?>
          </a>
        </div>
        <div class='not_resumen'><?= $registro->vc_resumen_informacion ?> 
        </div>
        <div class='not_enl'>
          <a href='<?= base_url('noticias/detalle/'.$registro->in_id_informacion ); ?>' title='Seguir leyendo'>Continuar <i class='fa fa-angle-double-right' aria-hidden='true'></i></a>
        </div>
      </li>
      <?php endforeach; ?>

  </ul>
   
  </div>

</section>