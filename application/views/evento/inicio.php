<section id='obras'>





<div id='obras_sli'>
  <ul id='obr_slider'>
     <?php foreach ($query9 as $index =>$file9 ): ?>
    <li>
      <div class='not_bk' style='background-image:url(<?= base_url('') ?>plugins/img/obras/_slider.png);'></div>
      <a href=''>
        <img src='<?= base_url('img/popup/'.$file9->img_popup); ?>
' title=''>

      </a>
    </li>
    <?php endforeach; ?>

  </ul>
  	
</div>




</section>