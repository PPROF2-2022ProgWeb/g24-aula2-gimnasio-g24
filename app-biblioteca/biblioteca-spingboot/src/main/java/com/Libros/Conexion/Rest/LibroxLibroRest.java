package com.Usuarios.Conexion.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Usuarios.Conexion.Service.LibroService;
import com.Usuarios.Conexion.Model.Libros;

@RestController
@RequestMapping ("/libros/")
public class LibroxLibroRest {
	
	@Autowired
	private LibroService  libroService;
	
	@GetMapping ("{id}")
	private ResponseEntity<List<Libros>> getAllLibroxLibro (@PathVariable("id") Long id ){
		return ResponseEntity.ok(libroService.findAllbyLibros(id));
		
	}

}
