import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {
  NgForm,
  FormsModule,
  FormControl,
  Validators,
  FormBuilder,
  FormGroup,
  ReactiveFormsModule,
} from '@angular/forms';

import { ProductoPublicoRoutingModule } from './producto-publico-routing.module';
import { ProductosPublicosComponent } from './productos-publicos/productos-publicos.component';
import { UsuarioadminComponent } from './usuarioadmin/usuarioadmin.component';
import { IngresomovimComponent } from './ingresomovim/ingresomovim.component';
import { CompraComponent } from './compra/compra.component';
import { RegistroComponent } from './registro/registro.component';

import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { CompradoComponent } from './Comprado/Comprado.component';
//import { CompraPipePipe } from './compra/compra-pipe.pipe';
import { FilterPipe } from '../pipes/filter.pipe';
import { UserpipePipe } from '../pipes/userpipe';

@NgModule({
  declarations: [
    ProductosPublicosComponent,
    UsuarioadminComponent,
    IngresomovimComponent,
    CompraComponent,
    RegistroComponent,
    LoginComponent,
    CompradoComponent,
    FilterPipe,
    UserpipePipe,
  ],
  imports: [
    CommonModule,
    ProductoPublicoRoutingModule,
    ReactiveFormsModule,
    FormsModule,
  ],
})
export class ProductoPublicoModule {}
