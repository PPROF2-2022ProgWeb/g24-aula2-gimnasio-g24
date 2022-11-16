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

import com.Usuarios.Conexion.Service.ProdDisponibleService;
import com.Usuarios.Conexion.Model.ProdDisponibles;

@RestController
@RequestMapping ("/prodDisponible/")

public class ProdDisponibleRest {
	
	@Autowired
	private ProdDisponibleService prodDisponibleService;
	
	@GetMapping
	public ResponseEntity<List<ProdDisponibles>> getAllProdDisponible (){
		return ResponseEntity.ok(prodDisponibleService.findAll());
		
	}
	/*
	//para agregar
	@PostMapping
	private ResponseEntity<ProdDisponibles> saveProdDisponible (@RequestBody ProdDisponibles prodDisponible){
try {
	ProdDisponibles prodDisponibleGuardado = prodDisponibleService.save(prodDisponible);
	return ResponseEntity.created(new URI("/prodDisponible/"+prodDisponibleGuardado.getIdmovim())).body(prodDisponibleGuardado);
}catch (Exception e) {
	return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
}
		
	}
	

	//para eliminar

@DeleteMapping (value = "deleteprodDisponible/{idmovim}" )
	private ResponseEntity<Boolean> deleteprodDisponible(@PathVariable ("idmovim") Long idmovim){
	prodDisponibleService.deleteById(idmovim);
		return ResponseEntity.ok(!(prodDisponibleService.findById(idmovim)!=null));
	}
	
	*/
}
