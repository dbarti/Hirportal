<?php
$pageTitle = "Sport Hírek";


// Hírek kiolvasása adatbázisból:

$query = "SELECT * FROM `pages` WHERE `id`='kapcsolat'";
$result = $db->query($query);
if ($db->errno) {
  die($db->error);
}

