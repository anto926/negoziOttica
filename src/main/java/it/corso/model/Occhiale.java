package it.corso.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "occhiale")
public class Occhiale implements Serializable{

	private static final long serialVersionUID = -3139336090987023683L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Pattern(regexp = "[a-zA-Z\\s']{1,255}", message = "{error.charnotallowed}")
	@Column(name = "descrizione", nullable = false)
	private String descrizione;
	
	@Pattern(regexp = "[a-zA-Z\\s']{1,255}", message = "{error.charnotallowed}")
	@Column(name = "modello", length = 255, nullable = false)
	private String modello;
	
	@Column(name = "materiale", length = 255, nullable = false)
	private String materiale;
	
	@Column(name = "tipologia", length = 255, nullable = false)
	private String tipologia;
	
	@Column(name = "genere", length = 255, nullable = false)
	private String genere;
	
	@Column(name = "colore", length = 255, nullable = false)
	private String colore;
	
	@Column(name = "marca", length = 255, nullable = false)
	private String marca;
	
	//@Pattern(regexp = "[0-9]{1,255}", message = "{error.charnotallowed}")
	@Column(name = "prezzo", length = 255, nullable = false)
	private double prezzo;
	
	@Transient
	private boolean image;

	public int getId() {
		return id;
	}

	public boolean isImage() {
		return image;
	}

	public void setImage(boolean image) {
		this.image = image;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getMateriale() {
		return materiale;
	}

	public void setMateriale(String materiale) {
		this.materiale = materiale;
	}

	public String getTipologia() {
		return tipologia;
	}

	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}

	public String getGenere() {
		return genere;
	}

	public void setGenere(String genere) {
		this.genere = genere;
	}

	public String getColore() {
		return colore;
	}

	public void setColore(String colore) {
		this.colore = colore;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	
	public String getModello() {
		return modello;
	}

	public void setModello(String modello) {
		this.modello = modello;
	}
}
