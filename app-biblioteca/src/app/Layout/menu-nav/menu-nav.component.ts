import { Component, OnInit } from '@angular/core';
import { LoginComponent } from 'src/app/Page/login/login.component';
/*angular traer sus propias validaciones */
import { FormControl,  Validators, ReactiveFormsModule } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
import { RouterEvent } from '@angular/router';

/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';
import { AuntenticacionService } from 'src/app/Conexion/auntenticacion/auntenticacion.service';
import { MenuNavService } from './menu-nav.service';


@Component({
  selector: 'app-menu-nav',
  templateUrl: './menu-nav.component.html',
  styleUrls: ['./menu-nav.component.css']
})
export class MenuNavComponent implements OnInit {

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


  constructor(private loginservice: MenuNavService) {  }



  ngOnInit(){

    this.MostrarTodos();

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
    this.createForm();
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
