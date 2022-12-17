import { Component, EventEmitter, Input, OnChanges, OnInit, Output, SimpleChanges, VERSION } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { CompraservService } from 'src/app/Service/compraserv.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',


  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit{

  logeado: boolean;
  userListado: any;
  userForm: FormGroup;
  productosDisp: any;
  Usuarios = {
    id: null,
    usuario: null,
    password: null,

}

usuario: string;
id: number;

  constructor(public fbmov: FormBuilder, private loginservice: MenuservService, public CompSer: CompraservService) { }
  ngOnInit() {
    this.loginservice.consultaMenu.subscribe((data: string)=>{
      this.usuario=data;
    })

    this.MostrarTodos();

   this.CompSer.getAllMovDisp().subscribe(
      (resp) => {
        this.productosDisp = resp;
      },
      (error) => {
        console.error(error);
      }
    );

    }



    MostrarTodos() {
      this.loginservice.mostrarTodos().subscribe((result:any) => this.userListado = result);
    }

}