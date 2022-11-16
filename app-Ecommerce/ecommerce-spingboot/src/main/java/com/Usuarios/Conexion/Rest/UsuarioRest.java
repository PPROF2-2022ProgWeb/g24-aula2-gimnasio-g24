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

import com.Usuarios.Conexion.Model.Usuario;
import com.Usuarios.Conexion.Model.productos;
import com.Usuarios.Conexion.Service.UsuarioService;

@RestController
@RequestMapping ("/usuario/")
public class UsuarioRest {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping
	private ResponseEntity<List<Usuario>> getAllUsuario (){
		return ResponseEntity.ok(usuarioService.findAll());
		
	}

	//para agregar
		@PostMapping
		private ResponseEntity<Usuario> saveproducto (@RequestBody Usuario usuarios){
	try {
		Usuario usuarioGuardado = usuarioService.save(usuarios);
		return ResponseEntity.created(new URI("/usuario/"+usuarioGuardado.getId())).body(usuarioGuardado);
	}catch (Exception e) {
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
	}
			
		}
		
			

		
		
		
		//para eliminar https://www.youtube.com/watch?v=exF6KrYvKRg

	@DeleteMapping (value = "deleteusuario/{id}" )
		private ResponseEntity<Boolean> deleteUsuario(@PathVariable ("id") Long id){
		usuarioService.deleteById(id);
			return ResponseEntity.ok(!(usuarioService.findById(id)!=null));
		}	
	
}


