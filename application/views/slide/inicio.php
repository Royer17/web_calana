<?php foreach ($query as $registro): ?>
  <div>
    <img src="<?php echo base_url(); ?>dist/img/sliderPrincipal/slider1_carnaval.jpg">
    <h6 class="z-depth-1"><?= $registro->titulo_slide ?></h6>
  </div>
<?php endforeach; ?>