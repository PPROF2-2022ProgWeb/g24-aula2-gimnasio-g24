import { Component, OnInit } from '@angular/core';
/*angular traer sus propias validaciones */
import { FormControl,  Validators } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';



@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  
Clave= new FormControl('',[Validators.required, Validators.maxLength(10), Validators.minLength(2)],[]);
Usuario= new FormControl('');

  constructor() { 
/*Para recivir cambios constantes en tiempo real  */
/*https://www.youtube.com/watch?v=sxpWh7x7uoQ */
this.Clave.valueChanges
.pipe(
  debounceTime(500)
)
.subscribe(value => {
  console.log(value);
  
})

  }

  ngOnInit(): void {
  }

  /*para ver lo que recibe del input */
getClave(event: Event){
  event.preventDefault();
  console.log(this.Clave.value);
}


}



