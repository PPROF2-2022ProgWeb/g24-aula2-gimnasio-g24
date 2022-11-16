package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.Table;


@Entity
@Table(name="PrProducto")
public class productos {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
     

    @JoinColumn(name = "id")
    
   @Column(name="producto") 
    private String producto;
    
    @Column(name="clave") 
    private String clave;
    
    @Column(name="costo") 
    private int costo;
    
    @Column(name="valor") 
    private int valor;
    
    @Column(name="cantidad") 
    private int cantidad;
    
    @Column(name="fechaing") 
    private String fechaing;
    
    @Column(name="idtipoprod") 
    private int idtipoprod;
    
    @Column(name="imgprod") 
    private String imgprod;
    
    @Column(name="rol") 
    private int rol;
    
    //Constructor
    public productos() {}

    
    
	/**
	 * @param id
	 * @param title
	 * @param author
	 */
	public productos(Long id, String producto, String clave, int costo, int valor, int cantidad, String fechaing, int idtipoprod, String imgprod, int rol) {
		super();
		this.id = id;
		this.producto = producto;
		this.clave = clave;
		this.costo = costo;
		this.valor = valor;
		this.cantidad = cantidad;
		this.fechaing = fechaing;
		this.idtipoprod = idtipoprod;
		this.imgprod = imgprod;
		this.rol = rol;

	}






	/**
	 * @return the producto
	 */
	public String getProducto() {
		return producto;
	}



	/**
	 * @param producto the producto to set
	 */
	public void setProducto(String producto) {
		this.producto = producto;
	}



	/**
	 * @return the clave
	 */
	public String getClave() {
		return clave;
	}



	/**
	 * @param clave the clave to set
	 */
	public void setClave(String clave) {
		this.clave = clave;
	}



	/**
	 * @return the costo
	 */
	public int getCosto() {
		return costo;
	}



	/**
	 * @param costo the costo to set
	 */
	public void setCosto(int costo) {
		this.costo = costo;
	}



	/**
	 * @return the valor
	 */
	public int getValor() {
		return valor;
	}



	/**
	 * @param valor the valor to set
	 */
	public void setValor(int valor) {
		this.valor = valor;
	}



	/**
	 * @return the cantidad
	 */
	public int getCantidad() {
		return cantidad;
	}



	/**
	 * @param cantidad the cantidad to set
	 */
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}



	/**
	 * @return the fechaing
	 */
	public String getFechaing() {
		return fechaing;
	}



	/**
	 * @param fechaing the fechaing to set
	 */
	public void setFechaing(String fechaing) {
		this.fechaing = fechaing;
	}



	/**
	 * @return the idtipoprod
	 */
	public int getIdtipoprod() {
		return idtipoprod;
	}



	/**
	 * @param idtipoprod the idtipoprod to set
	 */
	public void setIdtipoprod(int idtipoprod) {
		this.idtipoprod = idtipoprod;
	}



	/**
	 * @return the imgprod
	 */
	public String getImgprod() {
		return imgprod;
	}



	/**
	 * @param imgprod the imgprod to set
	 */
	public void setImgprod(String imgprod) {
		this.imgprod = imgprod;
	}



	/**
	 * @return the rol
	 */
	public int getRol() {
		return rol;
	}



	/**
	 * @param rol the rol to set
	 */
	public void setRol(int rol) {
		this.rol = rol;
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


    
    
 
}
