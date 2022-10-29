import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Usuarios } from '../usuario';

@Injectable({
  providedIn: 'root'
})
export class UsuarioservService {
  private url="http://localhost:8080/usuario/"
constructor(private httpClient: HttpClient) { }

public getAllUsua(): Observable<any>{
  return this.httpClient.get(this.url);
}

public saveUsua(usuarios: any): Observable<any>{
 return this.httpClient.post(this.url,usuarios);

}

public deleteUsua(id): Observable<any>{
  return this.httpClient.delete(this.url + "deleteusuario/" + id);

 }

 seleccionar(id :number){
  return this.httpClient.get(this.url + id);


}

}
