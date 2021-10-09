<!DOCTYPE html>
<html lang="es">
<head>
	 <title>Login</title>


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
	
	 
<meta charset="utf-8">
</head>

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
	<?php
	$usuario = $_POST['textUsuario'];
$password = $_POST['password'];
$mysqli = new mysqli("localhost","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
		  //$mysqli = new mysqli('127.0.0.1', 'tu_usuario', 'tu_contraseña', 'sakila');
//MenuLateral
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
		//require_once 'conexion.php';
	
  $conn = dbConnect();
 
$query = $mysqli -> query ("SELECT * FROM `Usuario` WHERE `Usuario` LIKE '$usuario' AND `Password` LIKE '$password'");
//$consulta = mysqli_query ($conn, "SELECT * FROM sesion WHERE user = '$nombre' AND pass = '$password'");  

if(!$query){ 
 echo "Usuario no existe " . $nombre . " " . $password. " o hubo un error " . mysqli_error($mysqli);
} 
	
	
	else{
            echo "Usuario no existe " . $nombre . " " . $password. " o hubo un error " . mysqli_error($mysqli)";
		
		/* 
                           echo "<script language='JavaScript'>";
            echo "location = 'http://planidear.com.ar/idearg%202020/wordpress/FormCons/FormConsInser.php'";
            echo "</script>";*/
                    } 
	
	?>
<section>


<div>
 <form id="formLogin" name="formLogin" method="post" action="#">
	
	<table align="center">
  <tbody>
    <tr>
	
		<br>
      <td width="280"> <p><img class="CssImage" src="img/LogoLogin.png" alt="Imagen logo"/></p>        <h1>ingrese su usuario</h1></td>
    </tr>
    <tr>
      <td><label for="textNombre">Nombre:<br>
      </label>
        <input name="textNombre" type="text" id="textNombre" placeholder="Ingrese su nombre"></td>
    </tr>
    <tr>
      <td>
        <label for="password">Contraseña:<br>
        </label>
      
          <input name="password" type="password" id="password">
          <br>
        </td>
    </tr>
    <tr>
      <td><p>
        <input name="submit" type="submit" id="submit" value="Enviar">
      </p>
        <p>          <a href="http://planidear.com.ar/Tienda/register.html">Registrese</a></p></td>
    </tr>
  </tbody>
</table>

</form>
</div>
</section>

</body>

</html>