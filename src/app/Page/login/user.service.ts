import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { of } from 'rxjs';
import { delay } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class UserService {

constructor(
private http:HttpClient

) { }

checkUsuario(usuario: string)
{
  /*isUsuarioAvailable es para decir que esta ocupado */
  return of ({isUsuarioAvailable: usuario !== 'gustavog'})
  .pipe(
    delay(500)
  )
}
}
