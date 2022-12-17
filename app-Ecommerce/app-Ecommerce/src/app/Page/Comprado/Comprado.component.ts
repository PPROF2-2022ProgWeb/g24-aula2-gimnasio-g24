import { Component, EventEmitter, Input, OnChanges, OnInit, Output, SimpleChanges, VERSION } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { UsuarioMenu } from 'src/app/Layout/menu/menu.component';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { __values } from 'tslib';
import { CompradoServiceService } from './comprado-service.service';
import { Location } from '@angular/common';
import { Usuarios } from 'src/app/usuario';

@Component({
  selector: 'app-Comprado',
  templateUrl: './Comprado.component.html',
  styleUrls: ['./Comprado.component.css']
})
export class CompradoComponent implements OnInit {


  logeado: boolean;
 CompradoListado: any;
  userForm: FormGroup;
  productosComprado: any;
  Usuarios = {
    id: null,
    usuario: null,
    password: null,

  };


  filterPost: any;
  post =
  [
    {
    usercompra: null,
  }];

 usercompra: string;
 usuario: string;
id: number;

  constructor(public fbmov: FormBuilder, private loginservice: MenuservService, public CompSer: CompradoServiceService, public _router: Router, public _location: Location,) { }

  ngOnInit() {


    this.MostrarTodos();
    this.loginservice.consultaMenu.subscribe((data: any) => {
      this.usuario = data;
          });
}






  MostrarTodos() {
    this.CompSer.mostrarTodos().subscribe((result:any) => this.productosComprado = result);
  }

  enviarDato(){
    this.loginservice.consultaMenu.emit(this.Usuarios.usuario);
    return this.filterPost.arg;
  }


}
