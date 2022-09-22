<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');

$json = file_get_contents('php://input');
$params = json_decode($json);
require("./conexion.php");
$con = returnConection();

mysqli_query($con ,"UPDATE `users` SET `name` = '$params->name', `last_name_p` = '$params->last_name_p', `last_name_m` = '$params->last_name_m', `domicilio` = '$params->domicilio',
`tel` = '$params->tel', `sanctions` = '$params->sanc_money', `sanc_money` = '$params->sanc_money', `Clave` = '$params->Clave' WHERE `users`.`id` = $params->Id;");

class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje = 'usuario modificado';


header('Content-Type: application/json');
echo json_encode($response);
?>
