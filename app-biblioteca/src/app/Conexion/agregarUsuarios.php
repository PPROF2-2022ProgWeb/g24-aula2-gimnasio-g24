<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');
$json = file_get_contents('php://input');
$params = json_decode($json);

require("./conexion.php");

$con = returnConection();

$registro=mysqli_query($con ,"INSERT INTO `users` (`id`, `name`, `last_name_p`, `last_name_m`, `domicilio`, `tel`, `sanctions`, `sanc_money`, `Clave`)
VALUES (NULL, '$params->name', '$params->last_name_p', '$params->last_name_m', '$params->domicilio', '$params->tel', '$params->sanctions', '$params->sanc_money', '$params->Clave');");



class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='Usuario Agregado';


header('Content-Type: application/json');
echo json_encode($response);

?>
