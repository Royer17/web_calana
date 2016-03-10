          <?php foreach ($query as $registro): ?>
            <div class="row noticia">
              <h4 class="titulo"><?= $registro->vc_titulo_informacion ?></h4>
              <div class="col s12 m4">
                <img class="responsive-img z-depth-1 hoverable materialboxed" src="https://scontent-mia1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1186912_1688543931433688_1292899946868305588_n.jpg?oh=0177712cd8e1b63fc19d948821c3bce5&oe=5771B076" alt="">
              </div>
              <div class="col s12 m8">
                <p class="fecha"><i class="icon-calendar"></i>18 de febrero del 2016</p>
                <p class="descripcion">Ciudad Nueva.- La municipalidad distrital de Ciudad Nueva en coordinación con el Registro Nacional de Identificación y Estado Civil (RENIEC), relaizarán este miércoles 24 de febrero de 09:00 a.m. a 1:00 p.m. la entrega de 350 DNI a todos los padres de familia que posteriormente hayan realizado el tramite gratuito documentario de sus menores hijos durante el año 2015.</p>
                <a class="right waves-effect waves-teal" href="#!"><i class="icon-enlace left"></i>VER MÁS</a>
              </div>
            </div>

            <div class="divider"></div>

          <?php endforeach; ?>