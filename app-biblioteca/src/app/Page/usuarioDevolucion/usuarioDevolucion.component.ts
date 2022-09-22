import { Component, OnInit } from '@angular/core';
import { UsuarioDevolucionService } from './usuarioDevolucion.service';

@Component({
  selector: 'app-usuarioDevolucion',
  templateUrl: './usuarioDevolucion.component.html',
  styleUrls: ['./usuarioDevolucion.component.css']
})
export class UsuarioDevolucionComponent implements OnInit {

  TituloLib: any;
  TituloLib2: null;



 titulo = 'Libros para devolver';


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
      name: null,
  }


  constructor(private usuariodevolucionservice: UsuarioDevolucionService) {  }

  ngOnInit() {
    this.MostrarTodos();

  }

    hayRegistros(){
    return true;
  }

    MostrarTodos() {
    this.usuariodevolucionservice.mostrarTodos().subscribe((result:any) => this.TituloLib = result);
  }



    Agregar(){
    this.usuariodevolucionservice.agregar(this.Titul).subscribe((datos: any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    });  }



  Eliminar(id){
    this.usuariodevolucionservice.eliminar(id).subscribe(datos =>{
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
        this.usuariodevolucionservice.seleccionar(id).subscribe((result:any) => this.Titul = result[0]);
      }

   Modificar(){
    console.log("se presiono modificar");
    this.usuariodevolucionservice.update(this.Titul).subscribe((datos:any) =>{
      if(datos['resultado'] == 'OK') {
        alert(datos['mensaje']);
        this.MostrarTodos();
      }

    }); }

    Seleccionar1(id){
    this.usuariodevolucionservice.seleccionar(id).subscribe(datos =>
     this.Titul = datos[0]);
  }
}
