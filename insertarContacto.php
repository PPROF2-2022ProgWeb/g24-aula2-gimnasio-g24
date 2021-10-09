<?php 	$con=mysqli_connect("localhost","c2110488_wordpre","tngiakub0Smcoot","c2110488_wordpre");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  } ?>
<?php
$nombre_tmp = $_FILES['thumb']['tmp_name'];
$nombre_img = $_FILES['archivo']['name'];
$tipo = $_FILES['archivo']['type'];
$tamano = $_FILES['archivo']['size'];

//Si existe imagen y tiene un tamaño correcto
if (($nombre_img == !NULL) && ($_FILES['archivo']['size'] <= 200000)) 
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($_FILES["archivo"]["type"] == "image/gif")
   || ($_FILES["archivo"]["type"] == "image/jpeg")
   || ($_FILES["archivo"]["type"] == "image/jpg")
   || ($_FILES["archivo"]["type"] == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos http://localhost/dashboard/ideargxampp/
      	$carpetas_destino='ftp.planidear.com.ar' . $nombre_imagen;
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['archivo']['tmp_name'],$directorio.$nombre_img);
             //     echo "imagen subida <br>";
                  
    } 
    else 
    {
       //si no cumple con el formato
       echo "No se puede subir una imagen con ese formato ";
    }
} 
else 
{
   //si existe la variable pero se pasa del tamaño permitido
   if($nombre_img == !NULL) echo "La imagen es demasiado grande "; 
}
?>

<?php


$ideContacto=$_POST['txtideContacto'];
$NombreContacto=$_POST['txtNombreContacto'];
$Empresa=$_POST['txtEmpresa'];
$ImagenEjemplo = 'http://planidear.com.ar/idearg%202020/wordpress/FormContacto/'.$nombre_img;
$Consulta=$_POST['txtConsulta'];
//$Producto=$_POST['listProducto'];
//$Fecha=$_POST['txtFecha'];
$Telefono=$_POST['txtTelefono'];
$Email=$_POST['txtEmail'];
 
$con=mysqli_connect("localhost","c2110488_wordpre","tngiakub0Smcoot","c2110488_wordpre");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  } 
    $sql="SELECT * FROM contacto";
	 $res=mysqli_query($con,"SELECT * FROM `contacto`");
	 
$insertar = "INSERT INTO `contacto` (`ideContacto`, `NombreContacto`, `Empresa`, `Consulta`, `ImagenEjemplo`, `Telefono`, `Email`) VALUES (NULL, '$NombreContacto', '$Empresa', '$Consulta', '$ImagenEjemplo', '$Telefono', '$Email')";
$ejecutar_insertar=mysqli_query($con,$insertar);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>linea insertada</title>
<link rel="stylesheet" href="css/estilo.css">
<style type="text/css">
body,td,th {
    font-family: Gotham, "Helvetica Neue", Helvetica, Arial, sans-serif;
}
body {
    background-image: url(/a5-g6-gimnasio/img/fondogym3.jpg);
}
</style>
<script type="text/javascript" src="js/Archivo.js"></script>
	
<body>

<header class="menu">
				<nav>
					<ul>
            <li class="CssImage"><img class="CssImage" src="img/LogoSF.png" width="70" height="70" alt="Imagen logo"/></li>
		<li><a href="http://planidear.com.ar/a5-g6-gimnasio/"> Inicio </a></li>
		<li><a href="http://planidear.com.ar/a5-g6-gimnasio/nosotros.html">Quienes somos</a></li>
		<li><a href="http://planidear.com.ar/a5-g6-gimnasio/Productos.html"> Producto</a></li>
		<li><a href="http://planidear.com.ar/a5-g6-gimnasio/FormContacto.php"> Contacto </a></li>
   		<li><a href="http://planidear.com.ar/a5-g6-gimnasio/Login.html"> Login </a></li>
		</ul>
	</nav>
	
	</header>
	
	</header>

	<table width="200" border="0" align="center">
	  <tbody>
	    <tr>
	      <td></td>
        </tr>
      </tbody>
</table>
<div align="center">
<table border=1>
<tr>
<td colspan="8" align="center" bgcolor="#999999"><span class="Estilo1">Contacto</span></td>
</tr>
<TR>
<TD><B>ImagenEjemplo </B></TD>
<TD><B>ideContacto </B></TD>
<TD><B>Nombre </B></TD>
<TD><B>Empresa </B></TD>
<TD><B>Consulta </B></TD>
<TD><B>Fecha </B></TD>
<TD><B>Telefono </B></TD>
<TD><B>Email </B></TD>
</TR>

</div>

<p>
  <?php
  //contacto
$con=mysqli_connect("localhost","c2110488_wordpre","tngiakub0Smcoot","c2110488_wordpre");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $sql="SELECT * FROM contacto";
  $res=mysqli_query($con,"SELECT * FROM `contacto` ORDER BY `contacto`.`ideContacto` DESC LIMIT 1");
  
 //$fila = mysqli_fetch_assoc($res);
  $totalRows_Recordset2 = mysqli_num_rows($res);


while($fila=mysqli_fetch_array($res))
{
echo "<TR>\n";
echo "<td>".'<img src="'.$fila['ImagenEjemplo'].'" width="50" heigth="50"/>'."</td>\n";
echo "<td>".$fila['ideContacto']."</td>\n";
echo "<td>".$fila['NombreContacto']."</td>\n";
echo "<td>".$fila['Empresa']."</td>\n";
echo "<td>".$fila['Consulta']."</td>\n";
echo "<td>".$fila['Fecha']."</td>\n";
echo "<td>".$fila['Telefono']."</td>\n";
echo "<td>".$fila['Email']."</td>\n";

echo "</TR>\n";
}
mysqli_close($con);
?>

<?php 


$titulo = 'Contacto planidear';
$mensaje = $Consulta;

$para = $Email;
$cabeceras = 'From: gustavog<gustavog@planidear.com.ar>';
$enviado = mail($para, $titulo, $mensaje,$cabeceras);

if ($enviado)
  echo 'Email enviado correctamente: '.$para;
else
  echo 'Error en el envío del email';

echo "<br>";
$tituloCopia = 'Contacto planidear Copia';
$mensajeCopia = $Consulta;

$paraCopia = "gustavog@planidear.com.ar";
$cabecerasCopia = 'From: gustavog<gustavog@planidear.com.ar>';
$enviadoCopia = mail($paraCopia, $tituloCopia, $mensajeCopia,$cabecerasCopia);

if ($enviadoCopia)
  echo 'Copia de Email enviado correctamente: '.$paraCopia;
else
  echo 'Error en el envío del email';


?>
 <p>Su registro a ingresado correctamente</p>


</body>
</html>