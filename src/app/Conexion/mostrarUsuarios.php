<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');

require("./conexion.php");

//devuelve la conexion
$con = returnConection();

$registroUsuario=mysqli_query($con ,"SELECT * FROM `prusuario` WHERE `usuario` LIKE 'alfredon1'");
$vec=[];
while($reg=mysqli_fetch_array($registroUsuario)){
    $vec[]=$reg;
}
$cad = json_encode($vec);
echo $cad;

?>
