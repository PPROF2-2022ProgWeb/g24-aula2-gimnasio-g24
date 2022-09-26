<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');

$json = file_get_contents('php://input');
$params = json_decode($json);
require("./conexion.php");
$con = returnConection();

mysqli_query($con ,"UPDATE `books` SET `title` = '$params->title', `description` = '$params->description'
, `author` = '$params->author', `category` = '$params->category', `edit` = '$params->edit', `pages` = '$params->pages', `ejemplares` = '$params->ejemplares',
 `stock` = '$params->stock', `ImgLibro` = '$params->ImgLibro', `FechaAlquiler` = '$params->FechaAlquiler'
WHERE `books`.`id` = '$params->id';");

//Descripcion


class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje = 'Libro modificado';


header('Content-Type: application/json');
echo json_encode($response);
?>
