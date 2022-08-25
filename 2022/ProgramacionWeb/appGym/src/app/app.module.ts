import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'
/*para botones */
import { MatButtonModule } from '@angular/material/button';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuNavComponent } from './Layout/menu-nav/menu-nav.component';
import { HomeComponent } from './Page/home/home.component';
import { EquipoComponent } from './Page/equipo/equipo.component';
import { ContactoComponent } from './Page/contacto/contacto.component';
import {PageComponent} from './Page/Page.component';
import { LayoutComponent } from "./Layout/LayoutComponent";
import { RegisterComponent } from "./Page/register/register.component";





@NgModule({
  declarations: [
    AppComponent,
    MenuNavComponent,
    HomeComponent,
    EquipoComponent,
    ContactoComponent,
    PageComponent,
    LayoutComponent,
    RegisterComponent,


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
