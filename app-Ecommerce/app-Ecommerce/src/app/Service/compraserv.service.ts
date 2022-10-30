import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Movimientos } from '../movimientos';

@Injectable({
  providedIn: 'root'
})
export class CompraservService {

  private urlprod="http://localhost:8080/productos/";
  private urlmov="http://localhost:8080/movimiento/";
  private urldisp="http://localhost:8080/prodDisponible/";
urlcomp="http://localhost:8080/compra/";

constructor(private httpClient: HttpClient) { }

public getAllMov(): Observable<any>{
  return this.httpClient.get(this.urlprod);
}

public getAllMovDisp(): Observable<any>{
  return this.httpClient.get(this.urldisp);
}

public saveMov(productos: any): Observable<any>{
 return this.httpClient.post(this.urlcomp,productos);

}

public deleteMov(idmovim): Observable<any>{
  return this.httpClient.delete(this.urlmov + "deletemovimiento/" + idmovim);

 }

}
