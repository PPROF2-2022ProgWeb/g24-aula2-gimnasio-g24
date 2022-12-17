import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductoPublicoModule } from './Page/producto-publico.module';
import { ProductosPublicosComponent } from './Page/productos-publicos/productos-publicos.component';
import { UsuarioadminComponent } from './Page/usuarioadmin/usuarioadmin.component';
import {IngresomovimComponent} from './Page/ingresomovim/ingresomovim.component';
import { CompraComponent } from './Page/compra/compra.component';
import { RegistroComponent } from './Page/registro/registro.component';
import { LoginComponent } from './Page/login/login.component';
import { HomeComponent } from './Page/home/home.component';
import { NosotrosComponent } from './Page/nosotros/nosotros.component';
import { CompradoComponent } from './Page/Comprado/Comprado.component';



const routes: Routes = [

  { path: 'Productos', component: ProductosPublicosComponent },
  { path: 'Usuarios', component: UsuarioadminComponent },
  { path: 'Nosotros', component: NosotrosComponent },
  { path: 'Ingreso', component: IngresomovimComponent },
  { path: 'Compra', component: CompraComponent },
  { path: 'Comprado', component: CompradoComponent },
  { path: 'Registro', component: RegistroComponent },
  { path: 'Login', component: LoginComponent },

  { path: '**', pathMatch: 'full', component: HomeComponent},
{ path: 'home', component: HomeComponent },


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
   declarations: [

  ]
})
export class AppRoutingModule { }
