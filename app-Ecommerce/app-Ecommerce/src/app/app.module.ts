import { NgModule } from '@angular/core';
//para los formularios reactivos
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
//para comunicar a tras vez de los observables y suscripciones
import { HttpClientModule } from '@angular/common/http';
import { from } from 'rxjs';
//para utilziar app-routing
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
//Modulo
import { ProductoPublicoModule } from './Page/producto-publico.module';
import { LayoutModule } from './Layout/Layout.module';

//Componentes
import { MenuComponent } from './Layout/menu/menu.component';
import { HomeComponent } from './Page/home/home.component';
import { MenuservService } from './Layout/menu/menuserv.service';
import {
  GooglePayButtonComponent,
  GooglePayButtonModule,
} from '@google-pay/button-angular';
import { NgxPayPalModule } from 'ngx-paypal';
import { CompraComponent } from './Page/compra/compra.component';
import { FilterPipe } from './pipes/filter.pipe';
import { FooterComponent } from './Layout/footer/footer.component';

@NgModule({
  declarations: [AppComponent, MenuComponent, HomeComponent, FooterComponent],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    GooglePayButtonModule,
    LayoutModule,
    NgxPayPalModule,
    ProductoPublicoModule,
  ],
  providers: [MenuservService],
  bootstrap: [AppComponent, MenuservService, GooglePayButtonModule],
})
export class AppModule {}
