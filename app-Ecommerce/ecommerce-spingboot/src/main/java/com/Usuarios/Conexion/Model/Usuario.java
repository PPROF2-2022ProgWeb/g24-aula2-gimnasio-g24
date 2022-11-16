package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pr_usuario")
public class Usuario {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
     
    @Column(name="usuario") 
    private String usuario;
    
    @Column(name="email") 
    private String email;  
    
    @Column(name="password") 
    private String password;     
    
    @Column(name="rol") 
    private String rol;
    
    
    @Column(name="imagen") 
    private String imagen;
    
    @Column(name="role_id") 
    private int role_id;    

    //@ManyToOne
    
    //private Libros libros;
    
    //Constructor
    public Usuario() {}


	/**
	 * @param id
	 * @param usuario
	 * @param email
	 * @param password
	 * @param rol
	 * @param imagen
	 */
	public Usuario(Long id, String usuario, String email, String password, String rol, String imagen, int role_id) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.password = password;
		this.rol = rol;
		this.imagen = imagen;
		this.role_id = role_id;
	}


	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}


	/**
	 * @return the usuario
	 */
	public String getUsuario() {
		return usuario;
	}


	/**
	 * @param usuario the usuario to set
	 */
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}


	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}


	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	/**
	 * @return the rol
	 */
	public String getRol() {
		return rol;
	}


	/**
	 * @param rol the rol to set
	 */
	public void setRol(String rol) {
		this.rol = rol;
	}


	/**
	 * @return the imagen
	 */
	public String getImagen() {
		return imagen;
	}


	/**
	 * @param imagen the imagen to set
	 */
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}


	/**
	 * @return the role_idl
	 */
	public int getRole_id() {
		return role_id;
	}


	/**
	 * @param role_idl the role_idl to set
	 */
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}




	
	
    

}
