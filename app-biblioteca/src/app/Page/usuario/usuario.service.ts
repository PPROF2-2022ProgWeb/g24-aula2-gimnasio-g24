import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

   url = 'http://localhost/planidear/app-Biblioteca/my-app/src/app/Conexion/';

  constructor(private http: HttpClient) { }

   mostrarTodos(){

    return this.http.get(`${this.url}mostrarDisponibles.php`);

  }
  agregar(Titul: any){
    return this.http.post(`${this.url}agregarAlquilar.php`, JSON.stringify(Titul));

  }
  eliminar(id :number){
    return this.http.get(`${this.url}eliminar.php?idTitul=${id}`);
  }

  seleccionar(id :number){
    return this.http.get(`${this.url}seleccionarDisponibles.php?id=${id}`);
  }
  seleccionar1(id:number){
    return this.http.get(`${this.url}seleccionar.php?id=${id}`);
  }
  update(Titul: any){
    return this.http.post(`${this.url}update.php`, JSON.stringify(Titul));
  }




}
