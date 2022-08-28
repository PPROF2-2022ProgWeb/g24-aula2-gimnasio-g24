<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');
$json = file_get_contents('php://input');
$params = json_decode($json);

require("./conexion.php");
$con = returnConection();
 $registro=mysqli_query($con ," INSERT INTO `prproducto` (`id_Producto`, `Producto`, `Clave`, `Costo`, `Valor`, `Cantidad`, `Fecha_Ing`, `Id_Tipo_Prod`, `ImgProd`, `ImgProd2`) 
 VALUES (NULL, '$params->Producto', '', '', '$params->Valor', '', '', '', '$params->ImgProd', '$params->ImgProd2');");



class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='Usuario Agregado';



echo json_encode($response);

?>