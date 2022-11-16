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

import com.Usuarios.Conexion.Service.MovimientoService;
import com.Usuarios.Conexion.Model.Movimientos;

@RestController
@RequestMapping ("/movimiento/")

public class MovimientoRest {
	
	@Autowired
	private MovimientoService  movimientoService;
	
	@GetMapping
	public ResponseEntity<List<Movimientos>> getAllMovimiento (){
		return ResponseEntity.ok(movimientoService.findAll());
		
	}
	
	
	//para agregar
	@PostMapping
	private ResponseEntity<Movimientos> saveMovimiento (@RequestBody Movimientos movimiento){
try {
	Movimientos movimientoGuardado = movimientoService.save(movimiento);
	return ResponseEntity.created(new URI("/movimiento/"+movimientoGuardado.getIdmovim())).body(movimientoGuardado);
}catch (Exception e) {
	return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
}
		
	}
	
	
	
	
	
	
	//para eliminar

@DeleteMapping (value = "deletemovimiento/{idmovim}" )
	private ResponseEntity<Boolean> deleteMovimiento(@PathVariable ("idmovim") Long idmovim){
	movimientoService.deleteById(idmovim);
		return ResponseEntity.ok(!(movimientoService.findById(idmovim)!=null));
	}
}
