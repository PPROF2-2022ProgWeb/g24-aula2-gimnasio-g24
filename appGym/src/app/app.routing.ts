import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import  { HomeComponent } from './home/home.component';
import  { MenuNavComponent } from './menu-nav/menu-nav.component';
import  { ContactoComponent } from './contacto/contacto.component';
import { state } from '@angular/animations';
import { concat } from 'rxjs';


const appRoutes = [
    { path: 'home', component: HomeComponent,  pathMatch: 'full'},
    { path: 'menu', component: MenuNavComponent,  pathMatch: 'full'},
    { path: 'contacto', component: ContactoComponent,  pathMatch: 'full'},
  ];
