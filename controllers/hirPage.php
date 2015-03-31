<?php


// Hírek kiolvasása adatbázisból:

$query = "SELECT * FROM `news` WHERE "
        . "corrector_id IS NOT NULL AND "
        . "id=".$_GET['id'];
$news = $db->query($query);
if ($db->errno) {
  die($db->error);
}

