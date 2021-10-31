<!DOCTYPE html>
<html lang="es">
  <meta charset="UTF-8">
  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">
  <meta name="Sistema web para gimnasio" content="Pagina de inicio"/>
  <meta name="keywords" content="Sistema web, gimnasio, entrenamiento"/>
  <head>
    <title>Formulario Ingreso</title>


  
    <link rel="stylesheet" href="../dir/css/bootstrap.min.css">
    <script src="../dir/js/bootstrap.min.js" ></script>
    
    <!-- Compiled and minified Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <!-- Minified JS library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Compiled and minified Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="css/estiloHome.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@100&display=swap" rel="stylesheet">
    <script type="text/javascript" src="js/Archivo.js"></script>

    <meta charset="utf-8">
    
    <link href="img/LogoSF.png" rel="icon" type="image/png">
  </head>

<body>

  <header class="menu">
    <nav>
      <ul>
        <li class="CssImage"><img class="CssImage" src="img/LogoSF.png" width="70" height="70" alt="Imagen logo"/></li>
        <li><a href="index.html"> Home </a></li>
        <li><a href="sobre_nosotros.html">Equipo</a></li>
        <li><a href="contacto.html"> Contacto </a></li>
        <li><a href="form_ingreso.html"> Login </a></li>
        <li><a href="help.html"> Ayuda </a></li>
      </ul>
    </nav>
  </header>

  <section>
    <div class="container ">
      <div class="col CentroHome" >
        <p></p>
      <h1>login</h1>
      <p></p>
      </div>
    </div>
  </section>
  <br>

<!--form loguin-->
<section>
  <div class="container">
      <div class="row justify-content-md-center">
        
      <div class="col-6 EstiloFormIngreso">
  
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
			
        <label>Ya tenés una cuenta? Ingresá!!</label>
        <label form="usuario">Nombre de usuario</label>
        <input class="form-control" type="text" name="usuario" placeholder="Ingrese su usuario" required>
        <label form="clave">Contraseña</label>
        <input class="form-control" type="password" name="clave" required>

		<button class="btn btn-primary" type="submit" name="login">Ingresar</button>
        <a class="btn btn-primary" href="form_registro.html" role="button">Registrarse</a>
    </form>
		  
<?php

include("Conexion/conexion.php");

		  
// isset() del boton login
if(isset($_POST['login'])){

    // 3. Variables $_POST[]
    $u = $_POST['usuario'];
    $c = $_POST['clave']; 

    if($u == "" || $_POST['clave'] == null){ // Validamos que ningún campo quede vacío
        echo "<script>alert('Error: usuario y/o clave vacios!!');</script>"; // Se utiliza Javascript dentro de PHP
    }else{
        // Cadena de SQL
        $sql = "SELECT * FROM `PrUsuario` WHERE `usuario` LIKE '$u' AND `Clave` LIKE '$c'";
		

        // Ejecuto cadena query()
        if(!$consulta = $conexion->query($sql)){
            echo "ERROR: no se pudo ejecutar la consulta!";
        }else{

            // Cuento registros obtenidos del select. 
            // Como el nombre de usuario en la clave primaria no debería de haber mas de un registro con el mismo nombre.
            $filas = mysqli_num_rows($consulta);

            // Comparo cantidad de registros encontrados
            if($filas == 0){
                echo "<script>alert('Error: usuario y/o clave incorrectos!!');</script>";
            }else{

echo 
"<script type=\"text/javascript\">
window.location.href = \"http://planidear.com.ar/a5-g6-gimnasio/LisUsuarios.php\";
</script>";

            }

        }
    }
}
	
?>
		  
      </div>
    </div>
  </div>
</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
   
  <footer>
    <nav class="navbar navbar-light bg-light">
      <div class="container-fluid">
      
        <a class="navbar-brand" href="#">
          <img src="img/LogoSF.png" alt="" width="25" height="25" class="d-inline-block align-text-top" href="index.html">
          Home
        </a>
        <a href="sobre_nosotros.html">Equipo</a>
        <a href="contacto.html"> Contacto </a>
        <a href="form_ingreso.html"> Login </a>
        <a href="help.html"> Ayuda </a>
      </div>
    </nav>
  </footer>
    
</body>
</html>