import { Component, OnInit } from '@angular/core';
import {UsuarioService} from './usuario.service';

import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import {NgForm} from '@angular/forms';
import {HttpClient} from '@angular/common/http';

/*angular traer sus propias validaciones */
import { FormControl,  Validators } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';

@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.css']
})
export class UsuarioComponent implements OnInit {

  TituloLib: any;
  TituloLib2: null;



 titulo = 'Libros disponibles';


    Titul = {
      id : null,
      title: null,
      date: null,

      description: null,
      author: null,
      category: null,
      edit: null,

      lang: null,
      pages: null,
      ejemplares: null,
      stock: null,

      ImgLibro: null,
      FechaAlquiler: null,

      book_id: null,
      CantLendigs: null,
      available: null,
      user_id: null,
      date_return: null,
  }


  constructor(private usuarioService: UsuarioService) {  }

  ngOnInit() {
    this.MostrarTodos();
  }

    hayRegistros(){
    return true;
  }

    MostrarTodos() {
    this.usuarioService.mostrarTodos().subscribe((result:any) => this.TituloLib = result);
  }

    Agregar(){
    this.usuarioService.agregar(this.Titul).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    });  }



  Eliminar(id){
    this.usuarioService.eliminar(id).subscribe(datos =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }
    });  }

   /* Seleccionar(idTitul){
      this.homeService.seleccionar(idTitul).subscribe(datos =>{
        if(datos['resultado'] == 'OK') {
          alert(datos['mensaje']);
          this.MostrarTodos();
        }
      });  }*/

      Seleccionar(id:number) {
        this.usuarioService.seleccionar(id).subscribe((result:any) => this.Titul = result[0]);
      }

   Modificar(){
    console.log("se presiono modificar");
    this.usuarioService.update(this.Titul).subscribe((datos:any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    }); }

    Seleccionar1(id){
    this.usuarioService.seleccionar(id).subscribe(datos =>
     this.Titul = datos[0]);
  }
}

