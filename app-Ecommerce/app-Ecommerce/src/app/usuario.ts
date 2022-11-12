export class Usuarios {
  id: number;
  usuario: string;
  email: string;
  password: string;
  rol: string;
  imagen: string;
  role_id: number;

  constructor(id:number,usuario: string,password:string,email:string, role_id: number) {
    this.id = id;
    this.usuario = usuario;
    this.password = password;
    this.email = email;
    this.role_id = role_id;
    }

}


