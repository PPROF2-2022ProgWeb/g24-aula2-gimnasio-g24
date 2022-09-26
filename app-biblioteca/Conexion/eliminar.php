<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');

require("./conexion.php");
$con = returnConection();


$registro=mysqli_query($con ,"DELETE FROM `books` WHERE `books`.`id` = $_GET[id]");


class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='usuario borrado';

header('Content-Type: application/json');
echo json_encode($response);

?>
