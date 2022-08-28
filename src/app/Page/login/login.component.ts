import { Component, OnInit } from '@angular/core';
/*angular traer sus propias validaciones */
import { FormControl,  Validators } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';
import { AuntenticacionService } from 'src/app/Conexion/auntenticacion.service';



@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  
Clave= new FormControl('',[Validators.required, Validators.maxLength(10), Validators.minLength(2)],[]);
Usuario= new FormControl('',[Validators.required, Validators.maxLength(10), Validators.minLength(2)],[]);
/*! es para no de error cuando se inicialice */ 
public form1!: FormGroup;

  constructor(private fb:FormBuilder, private loginProd:AuntenticacionService) { 


/*Para recivir cambios constantes en tiempo real  */
/*https://www.youtube.com/watch?v=sxpWh7x7uoQ */
this.Clave.valueChanges
.pipe(
  debounceTime(500)
)
.subscribe(value => {
  console.log(value);
  
})

this.Usuario.valueChanges
.pipe(
  debounceTime(500)
)
.subscribe(value => {
  console.log(value);
  
})

  }

  ngOnInit(): void {
  /*para iniciar el form1 */
  this.form1 = this.createFrom1();  
  }

private createFrom1():FormGroup{
return this.fb.group({
  /*ver su no confunde */
  usuario:['',[Validators.required, Validators.maxLength(20), Validators.minLength(2)],[]],
  clave: ['',[Validators.required, Validators.maxLength(20), Validators.minLength(2)],[]]
});
}

public submitFormulario(){
  if(this.form1.invalid){
    Object.values(this.form1.controls).forEach(control=>{
      control.markAsTouched();
    });
return;
  }

if(this.loginProd.ingresarAplicativo!(this.form1.value)){

}else {
  alert('usuario o contraseña invalido')
}

  console.log(this.form1.value);
  alert("Se va a enviar el formulario");
  
}

public get f(): any{
  return this.form1.controls;
}

  /*para ver lo que recibe del input */
getClave(event: Event){
  event.preventDefault();
  console.log(this.Clave.value);
}

getUsuario(event: Event){
  event.preventDefault();
  console.log(this.Usuario.value);
}

getUsuario1(event: Event){
  event.preventDefault();
  const value = this.Usuario;
  console.log(value);
}


}



