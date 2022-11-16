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

import com.Usuarios.Conexion.Service.LibroService;
import com.Usuarios.Conexion.Model.Libros;

@RestController
@RequestMapping ("/libro/")

public class LibroRest {
	
	@Autowired
	private LibroService  libroService;
	
	@GetMapping
	public ResponseEntity<List<Libros>> getAllLibro (){
		return ResponseEntity.ok(libroService.findAll());
		
	}
	
	
	//para agregar
	@PostMapping
	private ResponseEntity<Libros> saveLibro (@RequestBody Libros libro){
try {
	Libros libroGuardado = libroService.save(libro);
	return ResponseEntity.created(new URI("/libro/"+libroGuardado.getId())).body(libroGuardado);
}catch (Exception e) {
	return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
}
		
	}
	
	//para eliminar https://www.youtube.com/watch?v=exF6KrYvKRg

@DeleteMapping (value = "delete/{id}" )
	private ResponseEntity<Boolean> deleteLibro(@PathVariable ("id") Long id){
		libroService.deleteById(id);
		return ResponseEntity.ok(!(libroService.findById(id)!=null));
	}
}
