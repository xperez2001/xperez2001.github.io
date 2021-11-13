
<?php

$accio = $_GET['accio'];


switch ($accio) {
    case 'llistar-categories':
        include __DIR__.'/resource_llistar_categories.php';
       break;
    default:
        include __DIR__.'/resource_portada.php';
        break;