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

import com.Usuarios.Conexion.Service.ProductoService;
import com.Usuarios.Conexion.Model.productos;

@RestController
@RequestMapping ("/productos/")

public class ProductosRest {
	
	@Autowired

	private ProductoService productoService;
	
	@GetMapping
	public ResponseEntity<List<productos>> getAllProducto (){
		return ResponseEntity.ok(productoService.findAll());
		
	}
	
	
	//para agregar
	@PostMapping
	private ResponseEntity<productos> saveproducto (@RequestBody productos producto){
try {
productos productosGuardado = productoService.save(producto);
	return ResponseEntity.created(new URI("/productos/"+productosGuardado.getId())).body(productosGuardado);
}catch (Exception e) {
	return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
}
		
	}

	
	
	
	//para eliminar https://www.youtube.com/watch?v=exF6KrYvKRg

@DeleteMapping (value = "deleteproducto/{id}" )
	private ResponseEntity<Boolean> deleteProducto(@PathVariable ("id") Long id){
	productoService.deleteById(id);
		return ResponseEntity.ok(!(productoService.findById(id)!=null));
	}
}
