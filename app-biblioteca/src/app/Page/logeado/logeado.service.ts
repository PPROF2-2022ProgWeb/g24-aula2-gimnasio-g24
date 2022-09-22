import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class LogeadoService {

  url = 'http://localhost/planidear/app-Biblioteca/my-app/src/app/Conexion/';

constructor(private http: HttpClient) { }

}
