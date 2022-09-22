import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


import { PageComponent } from './Page/Page.component';
import { LayoutComponent } from './Layout/Layout.component';
import { MenuNavComponent } from './Layout/menu-nav/menu-nav.component';
import {HomeComponent} from './Page/home/home.component';
import {PageNotFoundComponent} from './Page/PageNotFound/PageNotFound.component';
import {AdminComponent} from './Page/admin/admin.component';
import {UsuarioComponent} from './Page/usuario/usuario.component';
import { LoginComponent } from './Page/login/login.component';
import { LibrosAdminComponent } from './Page/LibrosAdmin/LibrosAdmin.component';
import { UsuarioAdminComponent } from './Page/UsuarioAdmin/UsuarioAdmin.component';
import { UsuarioAlquilerComponent } from './Page/usuarioAlquiler/usuarioAlquiler.component';
import { UsuarioDevolucionComponent } from './Page/usuarioDevolucion/usuarioDevolucion.component';


const routes: Routes = [

  { path: 'home', component: HomeComponent},
  { path: 'menu', component: MenuNavComponent},
  { path: 'admin', component: AdminComponent},
  { path: 'usuario', component: UsuarioComponent},
  { path: 'login', component: LoginComponent},
  { path: 'LibrosAdmin', component: LibrosAdminComponent},
  { path: 'UsuarioAdm', component: UsuarioAdminComponent},
  { path: 'Alquiler', component: UsuarioAlquilerComponent},
  { path: 'Devolucion', component: UsuarioDevolucionComponent},
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
