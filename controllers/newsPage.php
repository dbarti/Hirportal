<?php


// Hírek kiolvasása adatbázisból:

$query = "SELECT * FROM `news` WHERE "
        . "corrector_id IS NOT NULL AND "
        . "publication_date<='".date('Y-m-d H:i:s')."' AND "
        . "tag='$category'";
$news = $db->query($query);
if ($db->errno) {
  die($db->error);
}

