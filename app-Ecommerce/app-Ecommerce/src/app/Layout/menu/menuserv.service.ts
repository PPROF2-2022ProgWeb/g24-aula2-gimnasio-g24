import { EventEmitter, Injectable, Input, Output, SimpleChanges } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Subject } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class MenuservService {
  @Output() consultaMenu: EventEmitter<any> = new EventEmitter();
  url = 'http://localhost/planidear/g24-aula2-gimnasio-g24/app-Ecommerce/app-Ecommerce/src/app/Conexion/';
/*   url = 'https://planidear.com.ar/my-app/Conexion/';*/



constructor(private http: HttpClient) { }

loginUsuario(Usuarios: any){
  return this.http.post(`${this.url}ControlarLogin.php`, JSON.stringify(Usuarios));

}

loginAdmin(Name: any){
  return this.http.post(`${this.url}ControlarLoginAdmin.php`, JSON.stringify(Name));

}

   mostrarTodos(){

    return this.http.get(`${this.url}mostrarUsuarios.php`);

  }



}

