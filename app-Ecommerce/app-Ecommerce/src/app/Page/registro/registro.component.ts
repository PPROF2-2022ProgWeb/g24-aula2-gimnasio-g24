import { Component, OnInit } from '@angular/core';
//Para validaciones grupales
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UsuarioservService } from 'src/app/Service/usuarioserv.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css'],
})
export class RegistroComponent implements OnInit {
  usuaForm: FormGroup;
  usuarios: any;

  //permite instancia un objeto

  constructor(public fbu: FormBuilder, public UsuaSer: UsuarioservService) {}

  ngOnInit() {
    this.usuaForm = this.fbu.group({
      id: [''],
      usuario: ['', Validators.minLength],
      email: ['', Validators.email],
      password: ['', Validators.minLength(8)],
      imagen: ['assets/img/LogoSF.png'],
      clave: [''],
      rol: ['user'],
      role_id: [1],
    });

    this.UsuaSer.getAllUsua().subscribe(
      (resp) => {
        this.usuarios = resp;
      },
      (error) => {
        console.error(error);
      }
    );
  }
  user: any;
  guardar(): void {
    this.UsuaSer.saveUsua(this.usuaForm.value).subscribe(
      (resp) => {
        this.usuaForm.reset();
        this.usuarios = this.usuarios.filter((user) => resp.id !== user.id);
        this.usuarios.push(resp);
      },
      (error) => {
        console.error(error);
      }
    );
  }

  eliminar(usuario) {
    this.UsuaSer.deleteUsua(usuario.id).subscribe(
      (resp) => {
        if (!resp === true) {
          this.usuarios.pop(usuario);
          this.usuaForm.reset();
        }
      },
      (error) => {
        console.error(error);
      }
    );
  }

  editar(usuario) {
    this.usuaForm.setValue({
      id: usuario.id,
      usuario: usuario.usuario,
      email: usuario.email,
      password: usuario.password,
      rol: usuario.rol,
      imagen: usuario.imagen,
      role_id: 1,
    });
  }
}
