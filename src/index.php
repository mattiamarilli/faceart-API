<?php

session_start();
require_once __DIR__ . '/vendor/autoload.php';
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, PATCH, OPTIONS');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept, token');
header('Access-Control-Allow-Credentials: true');

foreach (glob("controllers/*Controller.php") as $filename)
    require_once $filename;

$klein = new \Klein\Klein();

//DATABASE

$klein->respond(function ($request, $response, $service, $app) {
    $app->register('db', function() {
        return new PDO('mysql:host=database;dbname=faceart', 'root', 'faceart');
    });
});

//ROUTES
$klein->respond('GET', '/test', ['IndexController', 'get']);
$klein->respond('GET', '/paintings', ['PaintingsController', 'getPaintings']);

//UTILS
// Match all endpoints to add Content-Type header
$klein->respond(function($req, $res) {
    $res->header('Content-Type', 'application/json');
});

// handle errors
$klein->onHttpError(function ($code, $router) {
    if($code == 404)
        $router->response()->body(json_encode(['error' => 'Not Found', 'code' => 404]));
    elseif ($code >= 400 && $code < 500)
        $router->response()->body(json_encode(['error' => 'User error', 'code' => $code]));
    elseif ($code >= 500 && $code <= 599)
        $router->response()->body(json_encode(['error' => 'Internal Server Error', 'code' => $code]));
});

$klein->dispatch();
?>