<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');


$json = file_get_contents('php://input');
$params = json_decode($json);


require("./conexion.php");
$con = returnConection();

$fecha_actual = date("Y-m-d");
//resto 30 día
$varFechaAlquiler = date("Y-m-d",strtotime($fecha_actual."+ 15 days"));

mysqli_query($con ,"INSERT INTO `lendings` (`id`, `user_id`, `book_id`, `date_out`, `date_return`, `CantLendigs`)
VALUES (NULL, '$params->user_id', '$params->book_id', CURRENT_TIMESTAMP, '$varFechaAlquiler', '$params->CantLendigs');");


class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='Libro Agregado';



header('Content-Type: application/json');

echo json_encode($response);



?>
