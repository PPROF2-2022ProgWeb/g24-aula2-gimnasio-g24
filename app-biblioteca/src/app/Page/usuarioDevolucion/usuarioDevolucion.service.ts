import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UsuarioDevolucionService {

  url = 'http://localhost/planidear/app-Biblioteca/my-app/src/app/Conexion/';

  constructor(private http: HttpClient) { }

   mostrarTodos(){

    return this.http.get(`${this.url}mostrarDevolucion.php`);

  }
  agregar1(name: any){
    return this.http.post(`${this.url}mostrarDevolucion.php`, JSON.stringify(name));

  }
  agregar(Titul: any){
    return this.http.post(`${this.url}agregarDevolver.php`, JSON.stringify(Titul));

  }
  eliminar(id :number){
    return this.http.get(`${this.url}eliminar.php?idTitul=${id}`);
  }

  seleccionar(id :number){
    return this.http.get(`${this.url}seleccionarDisponibles.php?id=${id}`);
  }
  seleccionar1(name: any){
    return this.http.get(`${this.url}seleccionarDisponibles.php?name=${name}`);
  }
  update(Titul: any){
    return this.http.post(`${this.url}update.php`, JSON.stringify(Titul));
  }

}
