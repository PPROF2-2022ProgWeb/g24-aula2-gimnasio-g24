<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');


$json = file_get_contents('php://input');
$params = json_decode($json);

require("./conexion.php");

$con = returnConection();

$registro=mysqli_query($con ,"SELECT * FROM `users` WHERE `name` LIKE '$params->name' AND `Clave` LIKE '$params->Clave';");


  while ($fila = mysqli_fetch_array($registro))

{
$varTipoUsuario = $fila['Clave'];
}
$varTipoUsuario1=$varTipoUsuario;

class Result{}

if($varTipoUsuario=true){
  $response = new Result();
  $response->resultado = 'OK';
  $response->mensaje ='Ingresado';
}else{
  $response = new Result();
$response->resultado = 'No OK';
$response->mensaje ='error';
}





header('Content-Type: application/json');

echo json_encode($response);


?>
