package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity

@Table(name="vistadisponible")
public class ProdDisponibles {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
     
 //   @ManyToOne
    @JoinColumn(name = "id")
    
 
    @Column(name="producto") 
    private String producto; 
    
    @Column(name="clave") 
    private String clave; 
    
    @Column(name="cantidad") 
    private int cantidad;  
    
    @Column(name="valor") 
    private String valor;   
    
    @Column(name="imgprod") 
    private String imgprod;    
    
    @Column(name="idcompra") 
    private Long idcompra;
  
    
    @Column(name="idproducto") 
    private Long idproducto;
    
    @Column(name="lugarentrega") 
    private String lugarentrega;
    
    @Column(name="formadepago") 
    private String formadepago;
    
    @Column(name="obscompra") 
    private String obscompra;
    
    @Column(name="resto") 
    private Long resto;      
    
    //Constructor
    public ProdDisponibles() {}

	/**
	 * @param id
	 * @param producto
	 * @param clave
	 * @param cantidad
	 * @param valor
	 * @param imgprod
	 * @param idcompra
	 * @param idproducto
	 * @param idcliente
	 * @param lugarentrega
	 * @param formadepago
	 * @param tipomovim
	 * @param obscompra
	 * @param 
	 */
	public ProdDisponibles(Long id, String producto, String clave, int cantidad, String valor, String imgprod,
			Long idcompra, Long idproducto, String lugarentrega, String formadepago, 
			String obscompra, Long resto) {
		super();
		this.id = id;
		this.producto = producto;
		this.clave = clave;
		this.cantidad = cantidad;
		this.valor = valor;
		this.imgprod = imgprod;
		this.idcompra = idcompra;
		this.idproducto = idproducto;
		this.lugarentrega = lugarentrega;
		this.formadepago = formadepago;
		this.obscompra = obscompra;
		this.resto = resto;
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
	 * @return the valor
	 */
	public String getValor() {
		return valor;
	}

	/**
	 * @param valor the valor to set
	 */
	public void setValor(String valor) {
		this.valor = valor;
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
	 * @return the idcompra
	 */
	public Long getIdcompra() {
		return idcompra;
	}

	/**
	 * @param idcompra the idcompra to set
	 */
	public void setIdcompra(Long idcompra) {
		this.idcompra = idcompra;
	}

	/**
	 * @return the idproducto
	 */
	public Long getIdproducto() {
		return idproducto;
	}

	/**
	 * @param idproducto the idproducto to set
	 */
	public void setIdproducto(Long idproducto) {
		this.idproducto = idproducto;
	}

	/**
	 * @return the lugarentrega
	 */
	public String getLugarentrega() {
		return lugarentrega;
	}

	/**
	 * @param lugarentrega the lugarentrega to set
	 */
	public void setLugarentrega(String lugarentrega) {
		this.lugarentrega = lugarentrega;
	}

	/**
	 * @return the formadepago
	 */
	public String getFormadepago() {
		return formadepago;
	}

	/**
	 * @param formadepago the formadepago to set
	 */
	public void setFormadepago(String formadepago) {
		this.formadepago = formadepago;
	}

	/**
	 * @return the obscompra
	 */
	public String getObscompra() {
		return obscompra;
	}

	/**
	 * @param obscompra the obscompra to set
	 */
	public void setObscompra(String obscompra) {
		this.obscompra = obscompra;
	}

	/**
	 * @return the resto
	 */
	public Long getResto() {
		return resto;
	}

	/**
	 * @param resto the resto to set
	 */
	public void setResto(Long resto) {
		this.resto = resto;
	}



	

	
    
 
}
