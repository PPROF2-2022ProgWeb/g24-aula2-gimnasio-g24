import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuservService } from 'src/app/Layout/menu/menuserv.service';
import { ProductoservService } from 'src/app/Service/productoserv.service';

@Component({
  selector: 'app-productos-publicos',
  templateUrl: './productos-publicos.component.html',
  styleUrls: ['./productos-publicos.component.scss'],
})
export class ProductosPublicosComponent implements OnInit {
  prodForm: FormGroup;
  productos: any;

  usuario: string;
  id: number;
  userListado: any;

  constructor(
    public fb: FormBuilder,
    public ProdSer: ProductoservService,
    private loginservice: MenuservService
  ) {}

  ngOnInit() {
    this.loginservice.consultaMenu.subscribe((data: string) => {
      this.usuario = data;
    });

    this.MostrarTodos();

    this.prodForm = this.fb.group({
      id: [''],
      producto: ['', Validators.required, []],
      clave: [''],
      costo: [1],
      valor: [1, Validators.required],
      cantidad: [1, Validators.required],
      fechaing: ['', Validators.required],
      idtipoprod: [1],
      imgprod: ['assets/img/LogoSF.png'],
      rol: [1],
    });

    this.ProdSer.getAllProd().subscribe(
      (resp) => {
        this.productos = resp;
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

  prod: any;
  guardar(): void {
    this.ProdSer.saveProd(this.prodForm.value).subscribe(
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
    this.ProdSer.deleteProd(producto.id).subscribe(
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
      costo: 1,
      cantidad: producto.cantidad,
      valor: producto.valor,
      fechaing: producto.fechaing,
      idtipoprod: producto.idtipoprod,
      imgprod: producto.imgprod,
      rol: producto.rol,
    });
  }
}
