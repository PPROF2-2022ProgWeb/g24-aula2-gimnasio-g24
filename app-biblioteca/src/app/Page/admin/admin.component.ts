import { Component, OnInit } from '@angular/core';
import {AdminService} from './admin.service';

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
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

  TituloLib: any;
  TituloLib2: null;



 titulo = 'Consulta libros';


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
      available: null,
      ImgLibro: null,
      FechaAlquiler: null,
  }


  constructor(private adminService: AdminService) {  }

  ngOnInit() {
    this.MostrarTodos();
  }

    hayRegistros(){
    return true;
  }

    MostrarTodos() {
    this.adminService.mostrarTodos().subscribe((result:any) => this.TituloLib = result);
  }

    Agregar(){
    this.adminService.agregar(this.Titul).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    });  }



  Eliminar(id){
    this.adminService.eliminar(id).subscribe(datos =>{
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
        this.adminService.seleccionar(id).subscribe((result:any) => this.Titul = result[0]);
      }

   Modificar(){
    console.log("se presiono modificar");
    this.adminService.update(this.Titul).subscribe((datos:any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    }); }

    Seleccionar1(id){
    this.adminService.seleccionar(id).subscribe(datos =>
     this.Titul = datos[0]);
  }

}

