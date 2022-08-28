import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ReactiveFormsModule } from '@angular/forms';
import { AuntenticacionService } from 'src/app/Conexion/auntenticacion.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'appGym';
  constructor(private loginProd: AuntenticacionService){}

  public visualizarMenu(): Boolean{
    return this.loginProd.habilitarlogeo();

  }
  
}
