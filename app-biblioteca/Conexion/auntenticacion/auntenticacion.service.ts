import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuntenticacionService {

  private ingresar:boolean = false
  ;

constructor() { }

public ingresarAplicativo(obj:any):boolean{
  this.ingresar = obj.usuario == 'Usuario' && obj.clave == 'Clave';
    return this.ingresar;

  }

  public habilitarlogeo(){
    return this.ingresar;
  }

}
