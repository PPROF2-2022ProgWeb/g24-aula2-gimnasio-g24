import {
  Component,
  EventEmitter,
  Input,
  OnChanges,
  OnInit,
  Output,
  SimpleChanges,
  VERSION,
} from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { UsuarioMenu } from 'src/app/Layout/menu/menu.component';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { __values } from 'tslib';
import { CompradoServiceService } from './comprado-service.service';
import { Location } from '@angular/common';
import { Usuarios } from 'src/app/usuario';
//https://www.youtube.com/watch?v=zV0NywULR_4&list=PLHgpVrCyLWAoSkzNPYt9nhmtSlpXjtnju

import { Observable, interval, timer } from 'rxjs';

@Component({
  selector: 'app-Comprado',
  templateUrl: './Comprado.component.html',
  styleUrls: ['./Comprado.component.css'],
})
export class CompradoComponent implements OnInit {
  //atributos
  logeado: boolean;
  CompradoListado: any;
  userForm: FormGroup;
  productosComprado: any;
  Usuarios = {
    id: null,
    usuario: null,
    password: null,
    usercompra: null,
  };

  filterPost: any;
  post = [
    {
      usercompra: null,
    },
  ];

  usercompra: string;
  usuario: string;
  id: number;
  //el constructo permite instanciar un objeto
  constructor(
    public fbmov: FormBuilder,
    private loginservice: MenuservService,
    public CompradoSer: CompradoServiceService,
    public _router: Router,
    public _location: Location
  ) {}
  contador = timer(1000);

  ngOnInit() {
    this.MostrarTodos();
    this.mostrarUsuario();
  }
  //funcion, procedimiento o rutina
  mostrarUsuario() {
    this.loginservice.consultaMenu.subscribe((data: any) => {
      this.usuario = data;
    });
    //https://youtu.be/ZfQhAjm2iI8?list=PLHgpVrCyLWAoSkzNPYt9nhmtSlpXjtnju
    this.contador.subscribe((n) => {
      alert('Bienvenido a tus compras');
    });
  }

  /* */

  MostrarTodos() {
    this.CompradoSer.getAllComprado().subscribe(
      (result: any) => (this.productosComprado = result)
    );
  }

  enviarDato() {
    this.loginservice.consultaMenu.emit(this.Usuarios.usuario);
    return this.filterPost.arg;
  }
}
