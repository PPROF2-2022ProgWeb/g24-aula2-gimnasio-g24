<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');
$json = file_get_contents('php://input');
$params = json_decode($json);

require("./conexion.php");

$nombre_imagen=$_FILES['imagen']['name'];
$tipo_iamgen=$_FILES['imagen']['type'];
$tamagno_imegen=$_FILES['imagen']['size'];


$carpetas_destino='ftp.localhost/planidear/coneccionproductos/ProductosAngularPHP/src/assets/img/' . $nombre_imagen;

move_uploaded_file($_FILES['imagen']['tmp_name'],$nombre_imagen);

//http://localhost/planidear/coneccionproductos/ProductosAngularPHP/src/app/Conexion/
$Imagen = 'http://localhost/planidear/coneccionproductos/ProductosAngularPHP/src/assets/img/'.$nombre_imagen;

$varImagen = $Imagen.$params->Imagen;

$con = returnConection();
 $registro=mysqli_query($con ,"INSERT INTO `prusuario` (`IdUsuario`, `Cedula`, `DNI`, `Nombre`, `Apellido`, `Celular`, `Direccion`, `Tel`, `id_Ciudad`, `Correo`, `usuario`, `TipoUser`, `Imagen`, `Clave`, `FechaNac`, `Fecha`) 
 VALUES (NULL, '', '', '$params->Nombre', '$params->Apellido', '', '', '', '', '', '$params->usuario', '2', '$varImagen', '$params->Clave', '', current_timestamp());");


class Result{}

$response = new Result();
$response->resultado = 'OK';
$response->mensaje ='Usuario Agregado';



echo json_encode($response);

?>