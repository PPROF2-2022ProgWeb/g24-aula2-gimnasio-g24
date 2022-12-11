package com.Usuarios.Conexion.Rest;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Usuarios.Conexion.Service.CompraService;
import com.Usuarios.Conexion.Service.LibroService;
import com.Usuarios.Conexion.Model.Compras;
import com.Usuarios.Conexion.Model.Libros;

@RestController
@RequestMapping ("/compra/")

public class CompraRest {
	
	@Autowired
	private CompraService  compraService;
	
	@GetMapping
	public ResponseEntity<List<Compras>> getAllLibro (){
		return ResponseEntity.ok(compraService.findAll());
		
	}
	
	
	//para agregar
	@PostMapping
	private ResponseEntity<Compras> saveCompra (@RequestBody Compras compra){
try {
	Compras compraGuardado = compraService.save(compra);
	return ResponseEntity.created(new URI("/compra/"+compraGuardado.getId())).body(compraGuardado);
}catch (Exception e) {
	return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
}
		
	}
	
	//para eliminar

@DeleteMapping (value = "deletecompra/{idcompra}" )
	private ResponseEntity<Boolean> deleteCompra(@PathVariable ("idcompra") Long idcompra){
		compraService.deleteById(idcompra);
		return ResponseEntity.ok(!(compraService.findById(idcompra)!=null));
	}
}
