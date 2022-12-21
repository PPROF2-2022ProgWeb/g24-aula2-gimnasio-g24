import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuComponent } from 'src/app/Layout/menu/menu.component';
import { UsuarioservService } from 'src/app/Service/usuarioserv.service';
import { ViewChild, AfterViewInit } from '@angular/core';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';

@Component({
  selector: 'app-usuarioadmin',
  templateUrl: './usuarioadmin.component.html',
  styleUrls: ['./usuarioadmin.component.css'],
})
export class UsuarioadminComponent implements OnInit {
  usuaForm: FormGroup;
  usuarios: any;
  logeadoform: any;
  logeadoAdminform: boolean;
  Usuarios = {
    usuario: null,
    password: null,
  };

  usuario: string;
  id: number;
  userListado: any;

  constructor(
    public fbu: FormBuilder,
    public UsuaSer: UsuarioservService,
    private loginservice: MenuservService
  ) {}

  ngOnInit() {
    this.loginservice.consultaMenu.subscribe((data: string) => {
      this.usuario = data;
    });

    this.MostrarTodos();

    this.logeadoform = true;

    this.usuaForm = this.fbu.group({
      id: [''],
      usuario: ['', Validators.minLength],
      email: ['', Validators.email],
      password: ['', Validators.minLength],
      rol: ['user'],
      imagen: ['assets/img/LogoSF.png'],
      role_id: [''],
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

  MostrarTodos() {
    this.loginservice
      .mostrarTodos()
      .subscribe((result: any) => (this.userListado = result));
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
      role_id: usuario.role_id,
    });
  }
}
