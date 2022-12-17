import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';

@Injectable({
  providedIn: 'root'
})
export class CompradoServiceService {

  urlComprado = 'http://localhost/planidear/g24-aula2-gimnasio-g24/app-Ecommerce/app-Ecommerce/src/app/Conexion/';
  usuario: string;

constructor(private http: HttpClient, private loginservice: MenuservService) { }

public getAllComprado(): Observable<any>{
  return this.http.get(`${this.urlComprado}mostrarCompraxUsuario.php`);
}

mostrarTodos(){

  return this.http.get(`${this.urlComprado}mostrarCompraxUsuario.php`);

}

mostrarUsuario(){

  return this.loginservice.consultaMenu.subscribe((data: any) => {
    this.usuario = data;
  });
}







}
