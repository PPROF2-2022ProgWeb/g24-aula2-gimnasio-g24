import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PageComponent } from './Page.component';
import {NgForm} from '@angular/forms';
import {HttpClient} from '@angular/common/http';

import { state } from '@angular/animations';
import { concat } from 'rxjs';
import { AdminComponent } from './admin/admin.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { HomeComponent } from './home/home.component';
import { LibrosAdminComponent } from './LibrosAdmin/LibrosAdmin.component';
import { LoginComponent } from './login/login.component';
import { PageNotFoundComponent } from './PageNotFound/PageNotFound.component';
import { UsuarioComponent } from './usuario/usuario.component';
import { UsuarioAdminComponent } from './UsuarioAdmin/UsuarioAdmin.component';
import { UsuarioAlquilerComponent } from './usuarioAlquiler/usuarioAlquiler.component';
import { UsuarioDevolucionComponent } from './usuarioDevolucion/usuarioDevolucion.component';


@NgModule({
  imports: [
    CommonModule,

  ],
  declarations: [PageComponent,
  NosotrosComponent,
AdminComponent,
LibrosAdminComponent,
LoginComponent,
PageNotFoundComponent,
UsuarioComponent]
})
export class PageModule { }
