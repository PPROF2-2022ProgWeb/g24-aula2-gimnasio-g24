<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');


$json = file_get_contents('php://input');
$params = json_decode($json);


require("./conexion.php");
$con = returnConection();

mysqli_query($con ,"INSERT INTO `books` (`id`, `title`, `date`, `description`, `author`, `category`, `edit`, `lang`, `pages`, `ejemplares`, `stock`, `available`, `ImgLibro`)
VALUES (NULL, '$params->title', CURRENT_TIMESTAMP, '$params->description', '$params->author', '$params->category', '$params->edit',
'$params->lang', '$params->pages', '$params->ejemplares', '$params->stock', 'Si', 'https://planidear.com.ar/RRHH/img/LogoIdearSin_Fondo.png');");


/*
 mysqli_query($con ,"INSERT INTO `books` (`id`, `title`, `date`, `description`, `author`, `category`, `edit`, `lang`, `pages`,`ejemplares`, `stock`,
 `available`, `ImgLibro`, `FechaAlquiler`) VALUES (NULL, '$params->title', current_timestamp(), '$params->author', '1',
 'Edit', 'lang', '416', 'descr', '100', '2', 'Si', 'img', '2022-10-05');");
*/

class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='Libro Agregado';



header('Content-Type: application/json');

echo json_encode($response);



?>
