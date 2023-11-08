<?php

include('../include.php');

//var_dump(app\Models\Pays::all());

/* $controllerName = 'app\\Controllers\\'.$_GET['controller'].'Controller';
$actionName = $_GET['action'];

$controller = new $controllerName;
$view = $controller->$actionName();
$view->display(); */

Kernel\Connexion::get();
$controller = new app\Controllers\PaysController();
$view = $controller->index();
$view->display();

//include('../app/Views/index.php');
