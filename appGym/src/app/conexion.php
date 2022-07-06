<?php
function retornarConexion() {
  $con=mysqli_connect("localhost","root","","c2110488_prispc");
  return $con;
}
?>