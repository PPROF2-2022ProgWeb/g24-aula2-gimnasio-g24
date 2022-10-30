import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UsuarioservService } from 'src/app/Service/usuarioserv.service';


@Component({
  selector: 'app-usuarioadmin',
  templateUrl: './usuarioadmin.component.html',
  styleUrls: ['./usuarioadmin.component.css']
})
export class UsuarioadminComponent implements OnInit {
  usuaForm: FormGroup;
  usuarios: any;
  constructor(public fbu: FormBuilder, public UsuaSer: UsuarioservService) { }

  ngOnInit() {


    this.usuaForm = this.fbu.group({
      id: [''],
      usuario: ['',Validators.minLength],
      email: ['', Validators.email],
      password: ['',Validators.minLength],
      rol: ['user'],
      imagen: [''],
    })

    this.UsuaSer.getAllUsua().subscribe(resp=>{
      this.usuarios = resp;

            },
            error=>{
              console.error(error)
            }
            )
  }
  user: any;
  guardar(): void{
    this.UsuaSer.saveUsua(this.usuaForm.value).subscribe(resp=>{
this.usuaForm.reset();
this.usuarios=this.usuarios.filter(user=> resp.id!==user.id)
this.usuarios.push(resp);

      },
      error=>{ console.error(error) },
    )

  }

  eliminar(usuario){
    this.UsuaSer.deleteUsua(usuario.id).subscribe(resp=>{

      if(!resp===true){

        this.usuarios.pop(usuario)
        this.usuaForm.reset();

      }
    },
    error=>{ console.error(error) },

      )
  }

  editar(usuario){
    this.usuaForm.setValue({
      id: usuario.id,
      usuario: usuario.usuario,
      email: usuario.email,
      password: usuario.password,
      rol: usuario.rol,
      imagen: usuario.imagen,
    })

    }

}