function pruebaExterna(){
	alert('al actualizar Un mensaje de prueba desde un archivo externo');}
//pruebas
document.getElementById('d').innerHTML()='¡Hola Mundo!';

function controlIngreso(){
	
				if($u == "" || $_POST['clave'] == null){ // Validamos que ningún campo quede vacío
        alert('INGRESASTE!!'); // Se utiliza Javascript dentro de PHP
    }else{
	window.location.href = "http://planidear.com.ar/a5-g6-gimnasio/form_ingreso.php";
	}
	
}