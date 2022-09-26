<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');

require("./conexion.php");

//devuelve la conexion
$con = returnConection();

$registro=mysqli_query($con ,"SELECT * FROM `TecVisLibrDispo` WHERE `available` > 0");
$vec=[];
while($reg=mysqli_fetch_array($registro)){
    $vec[]=$reg;
}
$cad = json_encode($vec);
echo $cad;

?>
