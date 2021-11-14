//funciones js
function EresMayoEdad(){
	alert("Eres mayor de edad");
}

function EresMenorEdad(){
	alert("Eres Menor de edad se enviara un correo!!!");
}

function CambiarImagen(){
	document.getElementById("logo").style.height="200px"
	document.getElementById("logo").style.width="200px"
	
}
	function valida(){
		if(document.getElementById("txtNombre").value.length <= 2 ){
			alert('ingrese un nombre de minimo 2 caracteres');
			return false;
		}else if(document.getElementById("txtApellido").value.length <= 2){
				alert('ingrese un Apellido de minimo 2 caracteres');
			return false;
		}
	}