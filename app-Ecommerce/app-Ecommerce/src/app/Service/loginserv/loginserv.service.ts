import { EventEmitter, Injectable, Output } from '@angular/core';
import { map } from 'rxjs/operators';
import { HttpClient } from '@angular/common/http';
import { Usuarios } from 'src/app/usuario';


@Injectable({
  providedIn: 'root'
})
export class LoginservService {

  url = 'http://localhost/planidear/g24-aula2-gimnasio-g24/app-Ecommerce/app-Ecommerce/src/app/Conexion/';


  //C:\xampp\htdocs\planidear\g24-aula2-gimnasio-g24\app-Ecommerce\app-Ecommerce\src
  /*   url = 'https://planidear.com.ar/my-app/Conexion/';*/
  /* http://localhost:8080/libro/ */
/* url = 'http://localhost/planidear/g24-aula2-gimnasio-g24/app-Biblioteca/src/app/Conexion/'; */


  constructor(private http: HttpClient) { }

   mostrarTodos(){

    return this.http.get(`${this.url}mostrarUsuarios.php`);

  }
  mostrarTodos1(Name: any){
    return this.http.post(`${this.url}ControlarLogin.php`, JSON.stringify(Name));

  }

  mostrarTodos2(Name: any){
    return this.http.post(`${this.url}ControlarLogin.php`, JSON.stringify(Name));

  }
}
