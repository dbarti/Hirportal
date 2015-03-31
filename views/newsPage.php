<?php include('includes/header.php'); ?>

<div id="content">
      <?php
  foreach ($news as $item) {
    echo '<div class="news">';
    echo '<div class="title">'.$item['title'].'</div>';
    echo '<div class="text">'.$item['lead'].'</div>';
    echo '<div class="date">'.$item['date'].'</div>';
    echo '<a href="?q=hir&id='.$item['id'].'" class="btn btn-default btn-xs">Tovább</a>';
    echo '</div>';
  }
  ?>
</div>

<?php
include('includes/footer.php');
