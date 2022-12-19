package it.corso.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "utente")
public class Utente implements Serializable{

	private static final long serialVersionUID = 2341544895174982066L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Pattern(regexp = "[a-zA-Z0-9]{1,255}", message = "{error.charnotallowed}")
	@Column(name = "username", length = 255, nullable = false)
	private String username;
	
	@Pattern(regexp = "[a-zA-Z0-9]{1,255}", message = "{error.charnotallowed}")
	@Column(name = "password", length = 255, nullable = false)
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
