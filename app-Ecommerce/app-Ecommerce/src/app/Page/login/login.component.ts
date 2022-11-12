import { Component, OnInit } from '@angular/core';
/*angular traer sus propias validaciones */
import { FormControl,  Validators, ReactiveFormsModule } from '@angular/forms';
import { FormBuilder, FormGroup } from '@angular/forms';
import { RouterEvent } from '@angular/router';
import { LoginservService } from 'src/app/Service/loginserv/loginserv.service';




@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

 titulo = 'Consulta Usuarios';





  constructor() {  }



  ngOnInit(){



  }









}

