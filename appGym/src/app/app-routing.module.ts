import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import  { HomeComponent } from './home/home.component';
import  { ContactoComponent } from './contacto/contacto.component';
import  { EquipoComponent } from './equipo/equipo.component';
import  { LoginComponent } from './login/login.component';
import  { AyudaComponent } from './ayuda/ayuda.component';
import  { MenuNavComponent } from './menu-nav/menu-nav.component';


const routes: Routes = [

{ path: 'home', component: HomeComponent},
{ path: 'contacto', component: ContactoComponent},
{ path: 'equipo', component: EquipoComponent},
{ path: 'login', component: LoginComponent},
{ path: 'ayuda', component: AyudaComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
