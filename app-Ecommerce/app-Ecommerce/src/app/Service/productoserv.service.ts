import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Productos } from '../productos';


@Injectable({
  providedIn: 'root'
})
export class ProductoservService {
  private url="http://localhost:8080/productos/"
constructor(private httpClient: HttpClient) { }

public getAllProd(): Observable<any>{
  return this.httpClient.get(this.url);
}

public saveProd(productos: any): Observable<any>{
 return this.httpClient.post(this.url,productos);

}

public deleteProd(id): Observable<any>{
  return this.httpClient.delete(this.url + "deleteproducto/" + id);

 }

 seleccionar(id :number){
  return this.httpClient.get(this.url + id);


}

}
