<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Listado articulos</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table border=1 align="center">
<tr>
<td colspan="4" align="center" bgcolor="#9DD3AF">


  <p>Usuarios</p>
  </td>
</tr>
<TR bgcolor="#E6E7E8">
<TD><B>IdUsuario</B></TD>
<TD><B>DNI</B></TD>
<TD><B>Nombre</B></TD>
<TD><B>Apellido</B></TD>

</TR>

<p>
  <?php
//$mysqli = new mysqli("localhost","c2110488_wordpre","tngiakub0Smcoot","c2110488_wordpre");
$mysqli = new mysqli("168.197.48.110","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


$query = $mysqli -> query ("SELECT * FROM `PrUsuario`");


  while ($fila = mysqli_fetch_array($query))

{
echo "<TR>\n";
//echo "<td>".'<img src="'.$fila['Imagen'].'" width="50" heigth="50"/>'."</td>\n";
echo "<td>".$fila['IdUsuario']."</td>\n";
echo "<td>".$fila['DNI']."</td>\n";
echo "<td>".$fila['Nombre']."</td>\n";
echo "<td>".$fila['Apellido']."</td>\n";

echo "</TR>\n";
}

?>


</body>
</html>
 