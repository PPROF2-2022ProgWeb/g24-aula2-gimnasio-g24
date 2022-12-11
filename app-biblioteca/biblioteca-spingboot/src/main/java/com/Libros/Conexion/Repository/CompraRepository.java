package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Usuarios.Conexion.Model.Compras;

@Repository
public interface CompraRepository extends JpaRepository<Compras, Long>{

}
