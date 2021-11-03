 <?php

$conexion = new mysqli('168.197.48.110','c2110488_PrIspc','98movadoDO','c2110488_PrIspc');
if ($conexion->connect_errno) {
    echo "ERROR al conectar con la DB.";
    exit;
}


?>