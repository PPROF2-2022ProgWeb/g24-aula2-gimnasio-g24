//funciones js

function EresMayoEdad(){
	//alert("Eres mayor de edad");
	swal ( "Eres mayor de edad" ) ;
}

function EresMenorEdad(){
	//alert("Eres Menor de edad se enviara un correo!!!");
	swal ( "Eres Menor de edad se enviara un correo!!!" ) ;
}

function CambiarImagen(){
	document.getElementById("logo").style.height="200px"
	document.getElementById("logo").style.width="200px"
	
}

	function validaNombre(){
		if(document.getElementById("txtNombre").value.length <= 2 ){
document.getElementById ("AvNombre"). innerHTML = "ingrese un nombre de minimo 2 caracteres" ;		
			swal ( "ingrese un nombre de minimo 2 caracteres" ) ;
			return false;
		}
	}
function validaApellido(){
		if(document.getElementById("txtApellido").value.length <= 2){
document.getElementById ("AvApellido"). innerHTML = "ingrese un nombre de minimo 2 caracteres" ;	
			swal ( "ingrese un Apellido de minimo 2 caracteres" ) ;
			return false;
		}else{
document.getElementById ("ParNombre"). innerHTML = "Apellido ok" ;
		}
	}