import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import  { HomeComponent } from '../app/Page/home/home.component';
import  { ContactoComponent } from '../app/Page/contacto/contacto.component';
import  { EquipoComponent } from '../app/Page/equipo/equipo.component';
import  { LoginComponent } from '../app/Page/login/login.component';
import  { AyudaComponent } from '../app/Page/ayuda/ayuda.component';
import {PageNotFoundComponent} from '../app/Page/PageNotFound/PageNotFound.component';
import {EcommerceComponent } from '../app/Page/ecommerce/ecommerce.component';
import { RegisterComponent } from '../app/Page/register/register.component';


const routes: Routes = [

{ path: 'home', component: HomeComponent},
{ path: 'contacto', component: ContactoComponent},
{ path: 'equipo', component: EquipoComponent},
{ path: 'login', component: LoginComponent},
{ path: 'ayuda', component: AyudaComponent},
{ path: 'ecommerce', component: EcommerceComponent},
{ path: 'register', component: RegisterComponent},

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
