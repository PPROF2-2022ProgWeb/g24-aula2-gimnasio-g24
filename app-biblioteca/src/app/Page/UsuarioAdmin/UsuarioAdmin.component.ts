import { Component, OnInit } from '@angular/core';
import { UsuarioAdminService } from './UsuarioAdmin.service';
import { FormControl,  Validators } from '@angular/forms';
import { FormGroup } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';



@Component({
  selector: 'app-UsuarioAdmin',
  templateUrl: './UsuarioAdmin.component.html',
  styleUrls: ['./UsuarioAdmin.component.css']
})
export class UsuarioAdminComponent implements OnInit {

  NameUse: any;
  NameUse2: null;
  userForm: FormGroup;

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


  constructor(private usuarioAdminService: UsuarioAdminService) {  }

  ngOnInit(){

    this.MostrarTodos();
    this.createForm();
  }


  private createForm(){
    this.userForm = new FormGroup({

      nameControl: new FormControl("",[Validators.required, Validators.minLength(2)],[]),

    });
  }

    hayRegistros(){
    return true;
  }

    MostrarTodos() {
    this.usuarioAdminService.mostrarTodos().subscribe((result:any) => this.NameUse = result);
  }

    Agregar(){
    this.usuarioAdminService.agregar(this.Usuarios).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();


      }
      console.log(this.userForm);


    });  }



  Eliminar(id){
    this.usuarioAdminService.eliminar(id).subscribe(datos =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }
    });  }

      Seleccionar(id:number) {
        this.usuarioAdminService.seleccionar(id).subscribe((result:any) => this.Usuarios = result[0]);
      }



   Modificar(){
    console.log("se presiono modificar");
    this.usuarioAdminService.update(this.Usuarios).subscribe((datos:any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    }); }


}

export class  UserModel {

  user: string;

  }
