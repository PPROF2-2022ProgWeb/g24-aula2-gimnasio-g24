import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { CompraservService } from '../../Service/compraserv.service';


@Component({
  selector: 'app-compra',
  templateUrl: './compra.component.html',
  styleUrls: ['./compra.component.css'],
})
export class CompraComponent implements OnInit {


  prodForm: FormGroup;
  productos: any;
  productosDisp: any;
  logeado: boolean;

  Usuarios = {
    id: null,
    usuario: null,
    password: null,
  };
  usuario: any;
  id: any;
  userListado: any;

  constructor(
    public fbmov: FormBuilder,
    public CompSer: CompraservService,
    private loginservice: MenuservService
  ) {}

  ngOnInit() {
    this.loginservice.consultaMenu.subscribe((data: any) => {
      this.usuario = data;
    });

   // this.MostrarTodos();

    this.prodForm = this.fbmov.group({
      valor: ['', Validators.required],
      idcompra: [''],
   id: [''],
      idproducto: [''],
      producto: [''],
      idcliente: [''],
      usercompra: [''],
      cantidad: ['', Validators.required],
      obscompra: [''],
      formadepago: ['', Validators.required],
      lugarentrega: ['', Validators.required],
      fechacompra: [''],
    });

    this.CompSer.getAllMov().subscribe(
      (resp) => {
        this.productos = resp;
      },
      (error) => {
        console.error(error);
      }
    );

    this.CompSer.getAllMovDisp().subscribe(
      (resp) => {
        this.productosDisp = resp;
      },
      (error) => {
        console.error(error);
      }
    );
  }

 /* MostrarTodos() {
    this.CompSer.getAllMovDisp.subscribe((result:any) => this.userListado = result);
  }*/

  prod: any;
  guardar(): void {
    this.CompSer.saveMov(this.prodForm.value).subscribe(
      (resp) => {

        this.productos = this.productos.filter((prod) => resp.idcompra !== prod.idcompra);
        this.productos.push(resp);
        this.prodForm.reset();
      },
      (error) => {
        console.error(error);
      }
    );
  }

 /* eliminar(producto) {
    this.CompSer.deleteMov(producto.id).subscribe(
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
  } */



  editar(producto) {
    this.prodForm.setValue({
      cantidad: 1,
      valor: producto.valor,
      idcompra: null,
      id: null,
      idproducto: producto.idproducto,
      producto: producto.producto,
      obscompra: "",
      //tipomovim: 1,
      idcliente: 1,
      usercompra: this.usuario,
      formadepago: producto.formadepago,
      lugarentrega: producto.lugarentrega,
      fechacompra: producto,
    });
  }



}



