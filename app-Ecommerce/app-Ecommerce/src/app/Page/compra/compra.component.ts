import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CompraservService } from '../../Service/compraserv.service';


@Component({
  selector: 'app-compra',
  templateUrl: './compra.component.html',
  styleUrls: ['./compra.component.css']
})
export class CompraComponent implements OnInit {
  prodForm: FormGroup;
  productos: any;
  productosDisp: any;
  constructor(public fbmov: FormBuilder, public CompSer: CompraservService) { }

  ngOnInit() {


    this.prodForm = this.fbmov.group({
      valor: ['',Validators.required],
      idmovim: [''],
      idproducto: ['',Validators.required],
      idcliente: [''],
      cantidad: ["",Validators.required],
      obscompra: [''],
      tipomovim: [2],
      formadepago: ['',Validators.required],
      lugarentrega: ['',Validators.required],
      fechacompra: [''],
    })

    this.CompSer.getAllMov().subscribe(resp=>{
      this.productos = resp;

            },
            error=>{
              console.error(error)
            }
            )

            this.CompSer.getAllMovDisp().subscribe(resp=>{
              this.productosDisp = resp;

                    },
                    error=>{
                      console.error(error)
                    }
                    )

  }


prod: any;
  guardar(): void{
    this.CompSer.saveMov(this.prodForm.value).subscribe(resp=>{
this.prodForm.reset();
this.productos=this.productos.filter(prod=> resp.id!==prod.id)
this.productos.push(resp);

      },
      error=>{ console.error(error) },
    )

  }

  eliminar(producto){
    this.CompSer.deleteMov(producto.id).subscribe(resp=>{

      if(!resp===true){

        this.productos.pop(producto)
        this.prodForm.reset();

      }
    },
    error=>{ console.error(error) },

      )
  }



  editar(producto){
    this.prodForm.setValue({
      cantidad: -1,
      valor: producto.valor,
      idmovim: producto.idmovim,
      idproducto: producto.idproducto,
      obscompra: producto.idcliente,
      tipomovim: producto.tipomovim,
      idcliente: producto.idcliente,
      formadepago: producto.formadepago,
      lugarentrega: producto.lugarentrega,
      fechacompra: producto,
    })


    }

}
