package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="pr_compra")
public class Compras {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idcompra;
     
 //   @ManyToOne
    @JoinColumn(name = "idcompra")
   @Column(name="idproducto") 
    private int idproducto;
    
    @Column(name="usercompra") 
    private String usercompra;
    
    @Column(name="idcliente") 
    private int idcliente;
    
    @Column(name="cantidad") 
    private int cantidad;
    
    
    @Column(name="obscompra") 
    private String obscompra;
    
    @Column(name="lugarentrega") 
    private String lugarentrega;
    
    @Column(name="formadepago") 
    private String formadepago;
    
    @Column(name="tipomovim") 
    private int tipomovim;
    
    @Column(name="valor") 
    private double valor;
    
    
    //Constructor
    public Compras() {}


	/**
	 * @param id
	 * @param idproducto
	 * @param idcliente
	 * @param fechacompra
	 * @param obscompra
	 * @param lugarentrega
	 * @param formadepago
	 */
	public Compras(Long idcompra, int idproducto, int idcliente, String usercompra, String obscompra, String lugarentrega,
			String formadepago, int cantidad, int tipomovim,double valor) {
		super();
		this.idcompra = idcompra;
		this.idproducto = idproducto;
		this.idcliente = idcliente;
		this.usercompra = usercompra;

		this.obscompra = obscompra;
		this.lugarentrega = lugarentrega;
		this.formadepago = formadepago;
		
		this.cantidad = cantidad;
		this.tipomovim = tipomovim;
		this.valor = valor;
	}


	/**
	 * @return the id
	 */
	public Long getId() {
		return idcompra;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Long idcompra) {
		this.idcompra = idcompra;
	}


	/**
	 * @return the idproducto
	 */
	public int getIdproducto() {
		return idproducto;
	}


	/**
	 * @param idproducto the idproducto to set
	 */
	public void setIdproducto(int idproducto) {
		this.idproducto = idproducto;
	}


	/**
	 * @return the idcliente
	 */
	public int getIdcliente() {
		return idcliente;
	}


	/**
	 * @param idcliente the idcliente to set
	 */
	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}





	/**
	 * @return the usercompra
	 */
	public String getUsercompra() {
		return usercompra;
	}


	/**
	 * @param usercompra the usercompra to set
	 */
	public void setUsercompra(String usercompra) {
		this.usercompra = usercompra;
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
	 * @return the tipomovim
	 */
	public int getTipomovim() {
		return tipomovim;
	}


	/**
	 * @param tipomovim the tipomovim to set
	 */
	public void setTipomovim(int tipomovim) {
		this.tipomovim = tipomovim;
	}


	/**
	 * @return the valor
	 */
	public double getValor() {
		return valor;
	}


	/**
	 * @param valor the valor to set
	 */
	public void setValor(double valor) {
		this.valor = valor;
	}

    
  
    
    
    
 
}
