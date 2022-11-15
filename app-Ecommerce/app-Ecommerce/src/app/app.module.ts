import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { from } from 'rxjs';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
//Modulo
import { ProductoPublicoModule } from './Page/producto-publico.module';
import { LayoutModule } from './Layout/Layout.module';

//Componentes
import { MenuComponent } from './Layout/menu/menu.component';
import { HomeComponent } from './Page/home/home.component';
import { MenuservService } from './Layout/menu/menuserv.service';
import { GooglePayButtonComponent, GooglePayButtonModule } from '@google-pay/button-angular';

@NgModule({
  declarations: [AppComponent, MenuComponent, HomeComponent,
   ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    GooglePayButtonModule,
    LayoutModule,
  ],
  providers: [MenuservService],
  bootstrap: [AppComponent, MenuservService, GooglePayButtonModule],
})
export class AppModule {}
