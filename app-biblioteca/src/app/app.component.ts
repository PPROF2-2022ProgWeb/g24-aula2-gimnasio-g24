import { Component } from '@angular/core';
import { HomeComponent } from './Page/home/home.component';

import { Router } from '@angular/router';
import { ReactiveFormsModule } from '@angular/forms';
import { AuntenticacionService } from 'src/app/Conexion/auntenticacion/auntenticacion.service';
import { LoginComponent } from './Page/login/login.component';
import { from } from 'rxjs';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

public logeado = false;

  title = 'Biblioteca virtual';

  constructor(private loginProd: AuntenticacionService){}

  public visualizarMenu(): Boolean{
    return this.loginProd.habilitarlogeo();

  }
}
