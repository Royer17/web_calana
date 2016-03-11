          <?php foreach ($query as $registro_noticia): ?>
            <div class="row noticia">
              <h4 class="titulo"><?= $registro_noticia->vc_titulo_informacion ?></h4>
              <div class="col s12 m4">
                <img class="responsive-img z-depth-1 hoverable materialboxed" src=<?= base_url('img/noticia/'.$registro_noticia->foto ); ?> alt="">
              </div>
              <div class="col s12 m8">
                <p class="fecha"><i class="icon-calendar"></i><?= $registro_noticia->dt_fecha_informacion ?></p>
                <p class="descripcion">Ciudad Nueva.- La municipalidad distrital de Ciudad Nueva en coordinación con el registro_noticia Nacional de Identificación y Estado Civil (RENIEC), relaizarán este miércoles 24 de febrero de 09:00 a.m. a 1:00 p.m. la entrega de 350 DNI a todos los padres de familia que posteriormente hayan realizado el tramite gratuito documentario de sus menores hijos durante el año 2015.</p>
                <a class="right waves-effect waves-teal" href="#!"><i class="icon-enlace left"></i>VER MÁS</a>
              </div>
            </div>

            <div class="divider"></div>

          <?php endforeach; ?>