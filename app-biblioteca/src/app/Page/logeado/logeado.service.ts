import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class LogeadoService {

  url = 'https://planidear.com.ar/my-app/Conexion/';

constructor(private http: HttpClient) { }

}
