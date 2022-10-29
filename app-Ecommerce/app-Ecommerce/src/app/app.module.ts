import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './Layout/menu/menu.component';


import { from } from 'rxjs';
import { ProductoPublicoModule } from './Page/producto-publico.module';


@NgModule({
  declarations: [
    AppComponent,

    MenuComponent



  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    ProductoPublicoModule,


  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
