package com.Usuarios.Conexion.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="books")
public class Libros {
	
	//Parameters
    @Id
    /*@Column(name="id") */
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
     
 //   @ManyToOne
    @JoinColumn(name = "id")
   @Column(name="title") 
    private String title;
    
    @Column(name="author") 
    private String author;
    
    @Column(name="date") 
    private String date;
    
    @Column(name="description") 
    private String description;
    
    @Column(name="category") 
    private String category;
    
    @Column(name="edit") 
    private String edit;
    
    @Column(name="lang") 
    private String lang;
    
    @Column(name="pages") 
    private int pages; 
    
    @Column(name="ejemplares") 
    private int ejemplares; 
  
    @Column(name="stock") 
    private int stock;
    
    @Column(name="available") 
    private String available;
    
  @Column(name="imagen") 
    private String imagen;
    
    

    
    //Constructor
    public Libros() {}

    
    
	/**
	 * @param id
	 * @param title
	 * @param author
	 */
	public Libros(Long id, String title, String author, String date, String description, String category, String edit, int pages, int ejemplares, int stock, String available, String imagen) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.date = date;
		this.description = description;
		this.category = category;
		this.edit = edit;
		this.pages = pages;
		this.ejemplares = ejemplares;
		this.stock = stock;
		this.available = available;
		this.imagen = imagen;
	
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
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	

	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}



	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}



	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}



	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}



	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}



	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}



	/**
	 * @return the edit
	 */
	public String getEdit() {
		return edit;
	}



	/**
	 * @param edit the edit to set
	 */
	public void setEdit(String edit) {
		this.edit = edit;
	}



	/**
	 * @return the lang
	 */
	public String getLang() {
		return lang;
	}



	/**
	 * @param lang the lang to set
	 */
	public void setLang(String lang) {
		this.lang = lang;
	}



	/**
	 * @return the pages
	 */
	public int getPages() {
		return pages;
	}



	/**
	 * @param pages the pages to set
	 */
	public void setPages(int pages) {
		this.pages = pages;
	}



	/**
	 * @return the ejemplares
	 */
	public int getEjemplares() {
		return ejemplares;
	}



	/**
	 * @param ejemplares the ejemplares to set
	 */
	public void setEjemplares(int ejemplares) {
		this.ejemplares = ejemplares;
	}



	/**
	 * @return the stock
	 */
	public int getStock() {
		return stock;
	}



	/**
	 * @param stock the stock to set
	 */
	public void setStock(int stock) {
		this.stock = stock;
	}



	/**
	 * @return the available
	 */
	public String getAvailable() {
		return available;
	}



	/**
	 * @param available the available to set
	 */
	public void setAvailable(String available) {
		this.available = available;
	}







	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * @param author the author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
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



    
    
    
    
 
}
