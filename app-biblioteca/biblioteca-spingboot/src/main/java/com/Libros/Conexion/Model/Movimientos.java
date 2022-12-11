package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="pr_movim")
public class Movimientos {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idmovim;
     
 //   @ManyToOne
    @JoinColumn(name = "idproducto")
   @Column(name="idproducto") 
    private Long idproducto;
    
    @Column(name="cantidad") 
    private int cantidad;
    
    @Column(name="usermov") 
    private String usermov;
    
    @Column(name="idcliente") 
    private int idcliente;
    
    @Column(name="obsmovim") 
    private String obsmovim;
    
    @Column(name="lugarentrega") 
    private String lugarentrega;
    
    @Column(name="formadepago") 
    private String formadepago;
    
    @Column(name="tipomovim") 
    private int tipomovim;  
    
    @Column(name="valor") 
    private int valor;
    
    //Constructor
    public Movimientos() {}

	/**
	 * @param idmovim
	 * @param idproducto
	 * @param idcliente
	 * @param fechamovim
	 * @param obsmovim
	 * @param lugarentrega
	 * @param formadepago
	 * @param tipomovim
	 */
	public Movimientos(Long idmovim, Long idproducto, int idcliente, String usermov,  String obsmovim,
			String lugarentrega, String formadepago, int tipomovim,  int cantidad, int valor) {
		super();
		this.idmovim = idmovim;
		this.idproducto = idproducto;
		this.idcliente = idcliente;
		this.usermov = usermov;

		this.obsmovim = obsmovim;
		this.lugarentrega = lugarentrega;
		this.formadepago = formadepago;
		this.tipomovim = tipomovim;
		this.cantidad = cantidad;
		this.valor = valor;
	}

	/**
	 * @return the idmovim
	 */
	public Long getIdmovim() {
		return idmovim;
	}

	/**
	 * @param idmovim the idmovim to set
	 */
	public void setIdmovim(Long idmovim) {
		this.idmovim = idmovim;
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
	 * @return the usermov
	 */
	public String getUsermov() {
		return usermov;
	}

	/**
	 * @param usermov the usermov to set
	 */
	public void setUsermov(String usermov) {
		this.usermov = usermov;
	}

	/**
	 * @return the obsmovim
	 */
	public String getObsmovim() {
		return obsmovim;
	}

	/**
	 * @param obsmovim the obsmovim to set
	 */
	public void setObsmovim(String obsmovim) {
		this.obsmovim = obsmovim;
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
	public double getValor() {
		return valor;
	}

	/**
	 * @param valor the valor to set
	 */
	public void setValor(int valor) {
		this.valor = valor;
	}



    
  
    
    
    
 
}
