package com.Usuarios.Conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Usuarios.Conexion.Model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

}
