import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UsuarioAlquilerService {

  url = 'https://planidear.com.ar/my-app/Conexion/';
  urljava = 'http://localhost:8080/libroDisp/';

  constructor(private http: HttpClient) { }

   mostrarTodos(){

    return this.http.get(`${this.urljava}`);

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
