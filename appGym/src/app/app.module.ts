import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'
/*para botones */
import { MatButtonModule } from '@angular/material/button';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuNavComponent } from './menu-nav/menu-nav.component';
import { HomeComponent } from './home/home.component';
import { EquipoComponent } from './equipo/equipo.component';
import { ContactoComponent } from './contacto/contacto.component';



@NgModule({
  declarations: [
    AppComponent,
    MenuNavComponent,
    HomeComponent,
    EquipoComponent,
    ContactoComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    MatButtonModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
