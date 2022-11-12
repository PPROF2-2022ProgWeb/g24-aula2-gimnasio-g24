import { Component, VERSION } from '@angular/core';
import { Router } from '@angular/router';
import { FormControl, ReactiveFormsModule } from '@angular/forms';
import { from } from 'rxjs';
import { LoginservService } from 'src/app/Service/loginserv/loginserv.service';





@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  title = 'app-Ecommerce';
  public logeado = false;
  usuarioHijo="usuario"
  parentMessage = "message from parent"; // <-- Nuevo atributo

constructor() {

}
}
