package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.Usuarios.Conexion.Model.Movimientos;

@Repository
public interface MovimientoRepository extends JpaRepository<Movimientos, Long>{

}
