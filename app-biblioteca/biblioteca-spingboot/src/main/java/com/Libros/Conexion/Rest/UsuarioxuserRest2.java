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

import com.Usuarios.Conexion.Model.Movimientos;
import com.Usuarios.Conexion.Model.Usuario;
import com.Usuarios.Conexion.Model.productos;
import com.Usuarios.Conexion.Service.UsuarioService;

@RestController
@RequestMapping ("/usuario/")
public class UsuarioxuserRest2 {
	
	@Autowired
	private UsuarioService usuarioService;
	/*
	
		@GetMapping ("{usuario1}")
		private ResponseEntity<List<Usuario>> getAllUsuario (@PathVariable("usuario") String usuario){

			return ResponseEntity.ok(usuarioService.findAllbyUser(usuario));
			
		}
		
			
*/

}


