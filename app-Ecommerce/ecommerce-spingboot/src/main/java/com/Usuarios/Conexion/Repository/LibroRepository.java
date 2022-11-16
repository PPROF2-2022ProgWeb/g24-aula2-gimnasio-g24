package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Usuarios.Conexion.Model.Libros;

@Repository
public interface LibroRepository extends JpaRepository<Libros, Long>{

}
