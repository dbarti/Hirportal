<?php

session_start();

require_once 'config.php';
$db = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
$db->set_charset('utf8');

// Aktuális lap kiválasztása:
$page = 'kezdolap';
if (isset($_GET['q'])) {
    $page = $_GET['q'];
}

$active_link = '';

// Aktuális lap betöltése:
switch ($page) {
    case 'sporthirek':
        $pageTitle = "sporthirek";
        $active_link = 'sporthirek';
        $category = 1;
        include('controllers/newsPage.php');
        include('views/newsPage.php');
        break;
    case 'kezdolap':
        $active_link = 'kezdolap';
        include('controllers/introductionPage.php');
        include('views/introductionPage.php');
        break;
    case 'hir':
        $active_link = 'frisshirek';
        include('controllers/hirPage.php');
        include('views/hirPage.php');
        break;
    case 'frisshirek':
        $active_link = 'frisshirek';
        include('controllers/allNewsPage.php');
        include('views/newsPage.php');
        break;
    case 'gazdasagihirek':
        $pageTitle = "gazdasagihirek";
        $active_link = 'gazdasagihirek';
        $category = 3;
        include('controllers/newsPage.php');
        include('views/newsPage.php');
        break;
    case 'kapcsolat':
        $active_link = 'kapcsolat';
        include('controllers/contactPage.php');
        include('views/contactPage.php');
        break;
    case 'politikaihirek':
        $pageTitle = "politikaihirek";
        $active_link = 'politikaihirek';
        $category = 2;
        include('controllers/newsPage.php');
        include('views/newsPage.php');
        break;
    default:
        $pageTitle = "Oldal nem található";
        include('views/404Page.php');
}

$db->close();
