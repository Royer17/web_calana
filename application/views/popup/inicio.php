<section id='obras'>





<div id='obras_sli'>
  <ul id='obr_slider'>
     <?php foreach ($query9 as $index =>$file9 ): ?>
    <li>
      <div class='not_bk' style='background-image:url(<?= base_url('') ?>plugins/img/obras/_slider.png);'></div>
      <a href=<?= base_url('popup/detalle/'.$file9->id_popup ); ?> >
        <img src='<?= base_url('img/popup/'.$file9->img_popup); ?>
' title='<?= $file9->enlace ?>'>

      </a>
    </li>
    <?php endforeach; ?>

  </ul>
  	
</div>




</section>