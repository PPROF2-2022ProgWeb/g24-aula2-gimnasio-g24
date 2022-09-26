<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header('Content-Type: application/json');

require("./conexion.php");
$con = returnConection();

$json = file_get_contents('php://input');
$params = json_decode($json);

$registro=mysqli_query($con ,"SELECT * FROM `users` WHERE `users`.`id` = $_GET[id]");


if($reg=mysqli_fetch_array($registro)){
    $vec[]=$reg;
}


$cad = json_encode($vec);
echo $cad;


?>
