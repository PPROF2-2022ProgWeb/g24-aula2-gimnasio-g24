import { Component, Input, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { LayoutModule } from 'src/app/Layout/Layout.module';
import { UsuarioMenu } from 'src/app/Layout/menu/menu.component';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { MovimientoservService } from 'src/app/Service/movimientoserv.service';


@Component({
  selector: 'app-ingresomovim',
  templateUrl: './ingresomovim.component.html',
  styleUrls: ['./ingresomovim.component.css'],
})
export class IngresomovimComponent implements OnInit {
  @Input() usuarioHijo: UsuarioMenu;
  prodForm: FormGroup;
  productos: any;
  productosDisp: any;

  Usuarios = {
    id: null,
    usuario: null,
    password: null,
  };

  usuario: string;
  id: number;
  userListado: any;


  constructor(
    public fbmov: FormBuilder,
    public MovSer: MovimientoservService,
    private loginservice: MenuservService
  ) {}

  ngOnInit() {

    this.loginservice.consultaMenu.subscribe((data: string)=>{
      this.usuario=data;
    })

    this.prodForm = this.fbmov.group({
      id: [''],
      producto: [''],
      clave: [''],
      costo: [''],
      valor: [''],

      fechaing: [''],
      idtipoprod: [''],
      imgprod: [''],
      rol: [''],

      idmovim: [''],
      idproducto: ['', Validators.required],
      idcliente: [1],
      usermov: ['', Validators.required],


      cantidad: [1, Validators.required],
      obsmovim: [''],
      fechamovim: [''],
      tipomovim: [1],
      formadepago: [1],
      lugarentrega: [1],
    });

    this.MovSer.getAllMov().subscribe(
      (resp) => {
        this.productos = resp;
      },
      (error) => {
        console.error(error);
      }
    );

    this.MovSer.getAllMovDisp().subscribe(
      (resp) => {
        this.productosDisp = resp;
      },
      (error) => {
        console.error(error);
      }
    );

    this.MostrarTodos();

  }

  MostrarTodos() {
    this.loginservice.mostrarTodos().subscribe((result:any) => this.userListado = result);
  }

  prod: any;
  guardar(): void {
    this.MovSer.saveMov(this.prodForm.value).subscribe(
      (resp) => {
        this.prodForm.reset();
        this.productos = this.productos.filter((prod) => resp.id !== prod.id);
        this.productos.push(resp);
      },
      (error) => {
        console.error(error);
      }
    );
  }

  eliminar(producto) {
    this.MovSer.deleteMov(producto.id).subscribe(
      (resp) => {
        if (!resp === true) {
          this.productos.pop(producto);
          this.prodForm.reset();
        }
      },
      (error) => {
        console.error(error);
      }
    );
  }

  editar(producto) {
    this.prodForm.setValue({
      id: producto.id,
      producto: producto.producto,
      clave: producto.clave,
      costo: producto.costo,
      cantidad: producto.cantidad,
      valor: producto.valor,
      fechaing: producto.fechaing,
      idtipoprod: producto.idtipoprod,
      imgprod: producto.imgprod,
      rol: producto.rol,

      usermov: this.usuario,

      idmovim: producto.idmovim,
      idproducto: producto.idproducto,
      obsmovim: producto.obsmovim,
      fechamovim: producto.fechamovim,
      tipomovim: producto.tipomovim,
    });
  }
}
