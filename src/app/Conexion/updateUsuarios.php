<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');

$json = file_get_contents('php://input');
$params = json_decode($json);
require("./conexion.php");
$con = returnConection();

mysqli_query($con ,"UPDATE `prusuario` SET `usuario` = '$params->usuario', `Clave` = '$params->Clave', `Nombre` = '$params->Nombre' , `Apellido` = '$params->Apellido'
, `TipoUser` = '$params->TipoUser', `Imagen` = '$params->Imagen'
WHERE `prusuario`.`IdUsuario` = '$params->IdUsuario';");


class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje = 'usuario modificado';


header('Content-Type: application/json');
echo json_encode($response);
?>