//let color=prompt("ingrese el color del auto");
//if (color=="rojo"){
//    document.write("El auto es rojo");
//}
//else{
//    document.write(`El color del auto es${color}`);
//}
/*
let pais = "Argentina";
let contador = 1;
while(contador<=3){
    document.write(`<h1>bucle qhile ${pais}</h1><br>`);
    contador++;


for(contador; contador<=3; contador++){
    document.write(`<h1>bucle for ${pais}</h2><b1>`);
}}*/
let num1=parseInt(prompt("Ingrese un numero"));
let num2=parseInt(prompt("Ingrese un numero"));
let resultado;
function sumar(){
    resultado=num1+num2;
    document.write(`<h1>El resultado es  ${resultado}</h1>`);
}
sumar();