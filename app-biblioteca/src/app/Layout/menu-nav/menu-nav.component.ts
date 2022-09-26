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
logeado: boolean;

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
    this.loginservice.mostrarTodos().subscribe((result:any) => this.NameUse =result);
    this.createForm();
  }

  ControlarLogin(){

    this.loginservice.mostrarTodos1(this.Usuarios).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();

        this.logeado = true;

      }else{
        alert(datos['mensaje']);
        this.MostrarTodos();

        this.logeado = false;

      }
      console.log(this.userForm);

    }); }




}
export class Usuario{
  constructor(
   public email: string,
   public  usuario: string,

   public id : null,
   public name: null,
   public last_name_p: null,

   public last_name_m: null,
   public domicilio: null,
   public tel: null,
   public sanctions: null,
   public sanc_money: null,
   public Clave: null,

  ){}
}
