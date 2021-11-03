<?php 
$mysqli = new mysqli("168.197.48.110","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
$nombre_imagen=$_FILES['imagen']['name'];
$tipo_iamgen=$_FILES['imagen']['type'];
$tamagno_imegen=$_FILES['imagen']['size'];


$carpetas_destino='ftp.planidear.com.ar' . $nombre_imagen;

move_uploaded_file($_FILES['imagen']['tmp_name'],$nombre_imagen);


$IdUsuario=(NULL);

$Imagen = 'http://planidear.com.ar/a5-g6-gimnasio/'.$nombre_imagen;
$Nombre=$_POST['txtNombre'];
$Apellido=$_POST['txtApellido'];
$Usuario=$_POST['txtUsuario'];
$Clave=$_POST['txtClave'];

	
$conInser=mysqli_connect("168.197.48.110","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  } 
  
$res=mysqli_query($con,"SELECT * FROM `PrUsuario`");



$insertarUsuario = "INSERT INTO `PrUsuario` (`IdUsuario`, `DNI`, `Nombre`, `Apellido`, `Imagen`, `usuario`, `Clave`) VALUES (NULL, '', '$Nombre', '$Apellido', '$Imagen', '$Usuario', '$Clave');";

$ejecutar_insertar=mysqli_query($conInser,$insertarUsuario);

echo "<script>alert('REGISTRADO!!');</script>";
echo "<script type=\"text/javascript\">
window.location.href = \"http://planidear.com.ar/a5-g6-gimnasio/form_ingreso.php\";
</script>";	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>linea insertada</title>
<style type="text/css">



<body>


</body>
</html>