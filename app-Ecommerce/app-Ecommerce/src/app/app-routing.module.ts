import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductoPublicoModule } from './Page/producto-publico.module';
import { ProductosPublicosComponent } from './Page/productos-publicos/productos-publicos.component';
import { UsuarioadminComponent } from './Page/usuarioadmin/usuarioadmin.component';
import {IngresomovimComponent} from './Page/ingresomovim/ingresomovim.component';
import { CompraComponent } from './Page/compra/compra.component';


const routes: Routes = [

  { path: 'Productos', component: ProductosPublicosComponent },
  { path: 'Usuarios', component: UsuarioadminComponent },
  { path: 'Ingreso', component: IngresomovimComponent },
  { path: 'Compra', component: CompraComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
