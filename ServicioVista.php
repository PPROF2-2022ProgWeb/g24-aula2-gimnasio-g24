<!DOCTYPE html>
<html lang="es">
<head>
	 <title>Servicio</title>


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
	
<table width="200" border="0" align="center">
	  <tbody>
	    <tr>
	      <td><img src="/Tienda/img/ImagenCabecera.jpg" alt="" width="626" height="101" class="nav"/></td>
        </tr>
      </tbody>
</table>
<p>&nbsp;</p>
<h1>Prueba manual o libreria</h1>

<table width="1056" border="1">
  <tbody>
    <tr>
      <td width="149">
		


		<form id="form1" name="form1" method="post" action="#IdCentro">
			<?php
 $mysqli = new mysqli("localhost","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
		  //$mysqli = new mysqli('127.0.0.1', 'tu_usuario', 'tu_contraseña', 'sakila');
//MenuLateral
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  

$query = $mysqli -> query ("SELECT * FROM `MenuLateral` ORDER BY `MenuLateral`.`Id_Menu` ASC");


  while ($fila = mysqli_fetch_array($query))

{
echo "<ul>\n";
echo "<li>"."<a href=\"#IdCentro?IdNumero=".$fila['IdNumero']."\">".$fila['IdNumero']."-".$fila['Nombre']."</a></li>\n";
	
	   $query1 = $mysqli -> query ("SELECT * FROM `Categoria` WHERE `N_Id_Menu` = ".$fila['IdNumero']."");


  while ($fila1 = mysqli_fetch_array($query1)){	  
	  echo "<ul>\n";
echo "<li>"."<a href=\"#IdCentro?Id_Categ=".$fila1['Id_Categ']."\">".$fila1['OrdenCat']."-".$fila1['Categoria']."</a></li>\n";
echo "</ul>\n";
  }
	  
echo "</ul>\n";
}

?>
			
      </form>
	  </td>
      <td width="655">
		   <?php
		echo  "<html lang=\"es\">";
 $mysqli = new mysqli("localhost","c2110488_PrIspc","98movadoDO","c2110488_PrIspc");
		 
//Centro
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  //$NombreArticulo=$_POST['txtNombreArticulo'];
		  $fila['IdNumero'];

$query = $mysqli -> query ("SELECT * FROM `MenuLateral` ORDER BY `MenuLateral`.`Id_Menu` ASC");


  while ($fila = mysqli_fetch_array($query))

{
echo "<table>";
echo "<TR>\n";
	   echo "<td>".'<img src="'.$fila['Img'].'" width="100" heigth="100"/>'."</td>\n";
echo "<td>"."<h1>".$fila['Id_Menu']."-".$fila['Nombre']."</h1>"."</td>\n";
	  
	
	   $query1 = $mysqli -> query ("SELECT * FROM `Categoria` WHERE `N_Id_Menu` = ".$fila['IdNumero']."");


  while ($fila1 = mysqli_fetch_array($query1)){	  
	  echo "<TR>\n";
	  echo "<td>".'<img src="'.$fila1['Img'].'" width="100" heigth="100"/>'."</td>\n";
echo "<td>"."<h2>".$fila1['N_Id_Menu']."-".$fila1['OrdenCat']."-".$fila1['Categoria']."</h2>"."</td>";
 	 

	  //Descripcion
	   $query2 = $mysqli -> query ("SELECT * FROM `Descripcion` WHERE `N_Id_Menu` = ".$fila['IdNumero']." AND `N_Id_Categ` = ".$fila1['OrdenCat']."");
//SELECT * FROM `Descripcion` WHERE `N_Id_Menu` = 2 AND `N_Id_Categ` = 2

  while ($fila2 = mysqli_fetch_array($query2)){	  
	  echo "<TR>";
	  echo "<td>".'<img src="'.$fila2['img'].'" width="100" heigth="100"/>'."</td>";
echo "<td>".$fila2['N_Id_Menu']."-".$fila2['N_Id_Categ']."-".$fila2['Orden']."-".$fila2['Descripcion']."</td>";
	  
echo "</TR>";
	}  
echo "</TR>\n";
  }
	  
echo "</TR>\n";
	  echo "</table>";
}

?>
		  <section id="IdCentro">
		  
		 
		  
		  </section>
		</td>
    </tr>
    <tr>
      <td height="22">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<p>
  <section>Colocar aquí el conten</section>
</p>
<div>
  <p>&nbsp;</p>
  <div>
    <div> </div>
  </div>

  <div></div>
</div>
<p>&nbsp;</p>

</body>

</html>