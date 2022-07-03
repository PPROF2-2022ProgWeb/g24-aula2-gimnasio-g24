import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import  { HomeComponent } from '../app/Page/home/home.component';
import  { MenuNavComponent } from '../app/Layout/menu-nav/menu-nav.component';
import  { ContactoComponent } from '../app/Page/contacto/contacto.component';
import { state } from '@angular/animations';
import { concat } from 'rxjs';


const appRoutes = [
    { path: 'home', component: HomeComponent,  pathMatch: 'full'},
    { path: 'menu', component: MenuNavComponent,  pathMatch: 'full'},
    { path: 'contacto', component: ContactoComponent,  pathMatch: 'full'},
  ];
