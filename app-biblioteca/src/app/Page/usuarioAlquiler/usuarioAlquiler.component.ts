import { Component, OnInit } from '@angular/core';
import { UsuarioAlquilerService } from './usuarioAlquiler.service';

@Component({
  selector: 'app-usuarioAlquiler',
  templateUrl: './usuarioAlquiler.component.html',
  styleUrls: ['./usuarioAlquiler.component.css']
})
export class UsuarioAlquilerComponent implements OnInit {

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


  constructor(private usuarioService: UsuarioAlquilerService) {  }

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
