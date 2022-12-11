package com.Usuarios.Conexion.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Usuarios.Conexion.Service.LibroService;
import com.Usuarios.Conexion.Service.MovimientoService;
import com.Usuarios.Conexion.Model.Libros;
import com.Usuarios.Conexion.Model.Movimientos;

@RestController
@RequestMapping ("/movimiento/")
public class MovxIdmovRest {
	
	@Autowired
	private MovimientoService  movimientoService;
	
	@GetMapping ("{idproducto}")
	private ResponseEntity<List<Movimientos>> getMovxIdmovRest (@PathVariable("idproducto") Long idproducto ){

		return ResponseEntity.ok(movimientoService.findAllbyMovimientos(idproducto));
		
	}

}
