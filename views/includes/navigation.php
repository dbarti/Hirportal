    <ul id="navigation" class="nav nav-pills nav-justified">
      <li role="presentation" <?php if ($active_link=='kezdolap') echo 'class="active"'; ?>><a href="?q=kezdolap">Kezdőlap</a></li>  
      <li role="presentation" <?php if ($active_link=='frisshirek') echo 'class="active"'; ?>><a href="?q=frisshirek">Legfrissebb Hírek</a></li>
      <li role="presentation" <?php if ($active_link=='gazdasagihirek') echo 'class="active"'; ?>><a href="?q=gazdasagihirek">Gazdasági Hírek</a></li>
      <li role="presentation" <?php if ($active_link=='politikaihirek') echo 'class="active"'; ?>><a href="?q=politikaihirek">Politikiai Hírek</a></li>
      <li role="presentation" <?php if ($active_link=='sporthirek') echo 'class="active"'; ?>><a href="?q=sporthirek">Sport Hírek</a></li>
      <!--li role="presentation"><a href="?q=kepgaleria">Képgaléria</a></li-->
      <li role="presentation" <?php if ($active_link=='kapcsolat') echo 'class="active"'; ?>><a href="?q=kapcsolat">Kapcsolat</a></li>
    </ul>