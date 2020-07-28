
  <section id="header_cabecera">
        
  <div id='slider'>
    <?php foreach ($query2 as $index =>$file ): ?>
      <div class='item'><img src='<?= base_url('img/sliderPrincipal/'.$file->img_slide ); ?>' width="2000" height="519"/>
        <div class='caption'><?= $file->titulo_slide ?></div>
      </div>
      <?php endforeach; ?> 
      

  </div>    


  </section>




 