import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';

@Injectable({
  providedIn: 'root',
})
export class CompradoServiceService {
  urlComprado =
    'http://localhost/planidear/g24-aula2-gimnasio-g24/app-Ecommerce/app-Ecommerce/src/app/Conexion/';
  usuario: string;
  urlCompradoJava = 'http://localhost:8080/comprado/';

  constructor(
    private http: HttpClient,
    private loginservice: MenuservService
  ) {}

  /*public getAllComprado(): Observable<any>{
  return this.http.get(`${this.urlComprado}mostrarCompraxUsuario.php`);
}*/

  public getAllComprado(): Observable<any> {
    return this.http.get(this.urlCompradoJava);
  }

  /*getAllCompradoUser(usuario: any){
  return this.http.post(`${this.urlComprado}mostrarCompraxUsuario.php`, JSON.stringify(usuario));

}*/
}
