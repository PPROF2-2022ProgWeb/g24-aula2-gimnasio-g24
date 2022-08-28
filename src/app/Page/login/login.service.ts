import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class LoginService {
  url = 'http://localhost/planidear/g24-aula2-gimnasio-g24/src/app/Conexion/conexion.php/';

constructor(private http: HttpClient) { }

}
