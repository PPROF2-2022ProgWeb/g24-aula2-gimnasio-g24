import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import  { HomeComponent } from '../Page/home/home.component';
import  { ContactoComponent } from '../Page/contacto/contacto.component';
import  { EquipoComponent } from '../Page/equipo/equipo.component';
import  { LoginComponent } from '../Page/login/login.component';
import  { AyudaComponent } from '../Page/ayuda/ayuda.component';
import {PageNotFoundComponent} from '../Page/PageNotFound/PageNotFound.component';
import {EnvCorreoComponent } from '../Page/EnvCorreo/EnvCorreo.component';


const routes: Routes = [

{ path: 'home', component: HomeComponent},
{ path: 'contacto', component: ContactoComponent},
{ path: 'equipo', component: EquipoComponent},
{ path: 'login', component: LoginComponent},
{ path: 'ayuda', component: AyudaComponent},
{ path: 'EnvCorreo', component: EnvCorreoComponent},
{ path: 'envCorreo', component: EnvCorreoComponent},

/* re direcciona al inicio */
{path: '', redirectTo: '/home', pathMatch: 'full'},

/* Para configurar la página 404 (not found), */
{path: '**', component: PageNotFoundComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
