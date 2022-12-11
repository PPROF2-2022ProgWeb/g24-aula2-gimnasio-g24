package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.Usuarios.Conexion.Model.productos;

@Repository
public interface ProductoRepository extends JpaRepository<productos, Long>{

}
