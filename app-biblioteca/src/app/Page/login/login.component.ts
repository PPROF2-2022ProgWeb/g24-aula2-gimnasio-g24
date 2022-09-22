import { Component, OnInit, TemplateRef, ViewChild, ViewContainerRef, AfterContentInit, AfterViewInit } from '@angular/core';
/*angular traer sus propias validaciones */
import { FormControl,  Validators, ReactiveFormsModule } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
import { RouterEvent } from '@angular/router';

/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';
import { AuntenticacionService } from 'src/app/Conexion/auntenticacion/auntenticacion.service';
import { LoginService } from './login.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  NameUse: any;
  NameUse2: null;
  userForm: FormGroup;
logeado: true;

 titulo = 'Consulta Usuarios';


    Usuarios = {
      id : null,
      name: null,
      last_name_p: null,

      last_name_m: null,
      domicilio: null,
      tel: null,
      sanctions: null,

      sanc_money: null,
      Clave: null,
  }


  constructor(private loginservice: LoginService) {  }



  ngOnInit(){

    /*this.MostrarTodos();*/
    this.createForm();
  }


  private createForm(){
    this.userForm = new FormGroup({

      nameControl: new FormControl("",[Validators.required, Validators.minLength(2)],[]),
      ClaveControl: new FormControl("",[Validators.required, Validators.minLength(2)],[]),
    });
  }

    hayRegistros(){
    return true;
  }

    MostrarTodos() {
    this.loginservice.mostrarTodos().subscribe((result:any) => this.NameUse = result);
  }

  MostrarTodos1(){

    this.loginservice.mostrarTodos1(this.Usuarios).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
        this.logeado = true;

      }
      console.log(this.userForm);


    });  }




}


