import {
  Component,
  EventEmitter,
  Input,
  OnChanges,
  OnInit,
  Output,
  SimpleChanges,
  VERSION,
} from '@angular/core';
import { LoginComponent } from 'src/app/Page/login/login.component';
/*angular traer sus propias validaciones */
import { FormControl, Validators, ReactiveFormsModule } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router, RouterEvent } from '@angular/router';
import { ViewChild, AfterViewInit } from '@angular/core'; // <--- Nuevo
/*El debounce para dejar que pase un tiempo en el formulario reactivo */
import { debounce, debounceTime } from 'rxjs/operators';
import { MenuservService } from './menuserv.service';

import { Location } from '@angular/common';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',

  styleUrls: ['./menu.component.css'],
})
export class MenuComponent implements OnInit {
  NameUse: any;
  NameUse2: null;
  userForm: FormGroup;
  logeado: boolean;
  logeadoAdmin: boolean;

  titulo = 'Consulta Usuarios';

  Usuarios = {

    id: null,
    usuario: null,
    password: null,
  };

  constructor(
    public fbmov: FormBuilder,
    private loginservice: MenuservService,
    public _router: Router, public _location: Location,
  ) {}

  ngOnInit() {
    this.enviarDato();
    this.userForm = this.fbmov.group({
      id: [''],
      usuario: [''],
      password: [''],
    });
  }

  ControlarLogin() {
    this.loginservice.loginUsuario(this.Usuarios).subscribe((datos: any) => {
      if (datos['resultado'] == 'OK') {
       // this.loginservice.consultaMenu.emit(this.Usuarios.usuario);

        alert(datos['mensaje']);
        this.logeado = true;
      } else {
        alert(datos['mensaje']);
        this.logeado = false;
      }
      // console.log(this.userForm);
    });

    this.loginservice.loginAdmin(this.Usuarios).subscribe((datos: any) => {
      if (datos['resultado'] == 'OK') {
       // this.loginservice.consultaMenu.emit(this.Usuarios.usuario);
        this.logeadoAdmin = true;
      } else {
        this.logeadoAdmin = false;
      }
      // console.log(this.userForm);
    });
  }

enviarDato(){
  this.loginservice.consultaMenu.emit(this.Usuarios.usuario);
}
refresh(): void {
  this._router.navigateByUrl("/refresh", { skipLocationChange: true }).then(() => {
  console.log(decodeURI(this._location.path()));
  this._router.navigate([decodeURI(this._location.path())]);
  });
}


}
export class UsuarioMenu {
  constructor(
    public id: string,
    public password: string,
    public usuario: string,
    public logeado: boolean,
    public logeadoAdmin: boolean
  ) {}
}
