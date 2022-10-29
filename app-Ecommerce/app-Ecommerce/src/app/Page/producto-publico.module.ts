import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {NgForm, FormsModule, FormControl,  Validators,FormBuilder, FormGroup, ReactiveFormsModule  } from '@angular/forms';

import { ProductoPublicoRoutingModule } from './producto-publico-routing.module';
import { ProductosPublicosComponent } from './productos-publicos/productos-publicos.component';
import { UsuarioadminComponent } from './usuarioadmin/usuarioadmin.component';
import { IngresomovimComponent } from './ingresomovim/ingresomovim.component';
import { CompraComponent } from './compra/compra.component';


@NgModule({
  declarations: [
    ProductosPublicosComponent,
    UsuarioadminComponent,
    IngresomovimComponent,
    CompraComponent
  ],
  imports: [
    CommonModule,
    ProductoPublicoRoutingModule,
    ReactiveFormsModule,
    FormsModule
  ]
})
export class ProductoPublicoModule { }
