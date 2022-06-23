import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import  { HomeComponent } from '../app/Page/home/home.component';
import  { ContactoComponent } from '../app/Page/contacto/contacto.component';
import  { EquipoComponent } from '../app/Page/equipo/equipo.component';
import  { LoginComponent } from '../app/Page/login/login.component';
import  { AyudaComponent } from '../app/Page/ayuda/ayuda.component';
import  { MenuNavComponent } from '../app/Layout/menu-nav/menu-nav.component';


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
