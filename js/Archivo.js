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