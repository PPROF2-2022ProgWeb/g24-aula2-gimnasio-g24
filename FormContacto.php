<!doctype html>
<html>
<head>
<title>Contacto</title>

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
	
	</header>
<table width="200" border="0" align="center">
	  <tbody>
	    <tr>
	     
        </tr>
      </tbody>
</table>
<form action="http://planidear.com.ar/Tienda/insertarContacto.php" method="post" name="form1" enctype="multipart/form-data">
<p align="center">&nbsp;</p>
<div align="left">
  <table width="826" border="0" align="center">
    <tr>
      <td colspan="2" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="85">Nombre :</td>
      <td width="493"><input name="txtNombreContacto" type="text" required="required" id="txtNombreContacto" size="50" autofocus /></td>
    </tr>
    <tr>
      <td>Email: </td>
      <td><label>
        <input name="txtEmail" type="email" required="required" id="txtEmail" onBlur="MM_validateForm('subject','','RisEmail');return document.MM_returnValue" size="50"/>
      </label></td>
    </tr>
    <tr>
      <td> Empresa
        :</td>
      <td><label>
        <input name="txtEmpresa" type="text" id="txtEmpresa" size="50" />
      </label></td>
    </tr>
    <tr>
      <td>Imagen muestra :</td>
      <td><p>
        <input type="file" name="archivo">
        <input type="submit" name="submit" value="enviar">
      </p></td>
    </tr>
    <tr>
      <td>Consulta:</td>
      <td><p>
        <textarea name="txtConsulta" cols="80" id="txtConsulta" onChange="MM_validateForm('message','','R');return document.MM_returnValue"></textarea>
      </p></td>
    </tr>
    <tr>
      <td> Telefono : </td>
      <td><input name="txtTelefono" type="text" id="txtTelefono" size="50" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label> </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="btnEnviar" id="btnEnviar" value="Enviar" />
      </label></td>
    </tr>
  </table>
</div>
	  </form>
</body>
</html>