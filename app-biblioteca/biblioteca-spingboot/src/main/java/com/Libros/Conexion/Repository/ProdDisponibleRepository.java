package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.Usuarios.Conexion.Model.ProdDisponibles;

@Repository
public interface ProdDisponibleRepository extends JpaRepository<ProdDisponibles, Long>{

}
