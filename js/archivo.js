<<<<<<< HEAD
window.addEventListener("load", inicio);

function inicio() {
    console.log("Que hace nene");
    //window.addEventListener("click", envioMensaje(evento));
    document.getElementById("btn-enviar").addEventListener("click", envioMensaje);
    document.getElementById("btn-volver").addEventListener("click", volverAInicio);
}

function pruebaExterna() {
    alert('al actualizar Un mensaje de prueba desde un archivo externo');
}

function envioMensaje(e) {
    e.preventDefault();
    console.log("HOLA");
    let input_nombre = document.getElementById('input_nombre');
    let input_correo = document.getElementById('input_correo');
    let input_textarea = document.getElementById('input_textarea');
    if (input_nombre.value == "") {
        input_nombre.value = "Este campo no puede estar vacio";
    }
    if (input_correo.value == "") {
        input_correo.value = "Este campo no puede estar vacio";
    }
    if (input_textarea.value == "") {
        input_textarea.value = "Este campo no puede estar vacio";
    }

}

function volverAInicio() {
    window.location = "index.html";
}
=======
function pruebaExterna(){
	alert('al actualizar Un mensaje de prueba desde un archivo externo');}

	/*document.getElementById('btn_alerta').onclick = function(){
		alert('Hola Mundo!');*/
		//declaraciones de variables
		var_numero = 100;
		var numero = 100;
		let $numero = 100;
		let letNumero=100;
		const numeroPar = 100;
		const PI = 3.14;

		if (true) {
			var x = 5;
		  }
		  console.log(x); // x vale 5		  
>>>>>>> 43b2b91af8e6c537ed641e5333dac6688529709c
