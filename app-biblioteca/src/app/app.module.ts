import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { FormControl,  Validators } from '@angular/forms';
import { FormGroup } from '@angular/forms';


import { ReactiveFormsModule } from '@angular/forms';

import { HttpClientModule } from '@angular/common/http';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ConexionComponent } from './Conexion/Conexion.component';
import { PageComponent } from './Page/Page.component';
import { LayoutComponent } from './Layout/Layout.component';
import { MenuNavComponent } from './Layout/menu-nav/menu-nav.component';
import {HomeComponent} from './Page/home/home.component';
import {AdminComponent} from './Page/admin/admin.component';
import {UsuarioComponent} from './Page/usuario/usuario.component';
import { LoginComponent } from './Page/login/login.component';
import { LogeadoComponent } from './Page/logeado/logeado.component';
import { LibrosAdminComponent } from './Page/LibrosAdmin/LibrosAdmin.component';
import { UsuarioAdminComponent } from './Page/UsuarioAdmin/UsuarioAdmin.component';
import { UsuarioAlquilerComponent } from './Page/usuarioAlquiler/usuarioAlquiler.component';
import { UsuarioDevolucionComponent } from './Page/usuarioDevolucion/usuarioDevolucion.component';




@NgModule({
  declarations: [
    AppComponent,
      ConexionComponent,
      PageComponent,
      LayoutComponent,
      MenuNavComponent,
      HomeComponent,
      AdminComponent,
      UsuarioComponent,
      LoginComponent,
      LogeadoComponent,
      LibrosAdminComponent,
      UsuarioAdminComponent,
      UsuarioAlquilerComponent,
      UsuarioDevolucionComponent,



   ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    HttpClientModule,



  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
