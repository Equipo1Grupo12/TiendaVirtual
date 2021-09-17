package com.edu.TiendaVirtual.modelo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usuarios")
public class Usuario {
	
	/*@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;*/
	
	@Id
	@Column(name="cedula")
	private int cedula;
	
	@Column(name="email_usuario",length = 50)
	private String email_usuario;
	
	@Column(name="nombre_usuario",length = 50)
	private String nombre_usuario;
	
	@Column(name="password",length = 50)
	private String password;
	
	@Column(name="usuario",length = 50)
	private String usuario;
	

	public int getCedula() {
		return cedula;
	}

	public void setCedula(int pCedula) {
		cedula = pCedula;
	}

	public String getEmail_usuario() {
		return email_usuario;
	}

	public void setEmail_usuario(String pEmail_usuario) {
		email_usuario = pEmail_usuario;
	}

	public String getNombre_usuario() {
		return nombre_usuario;
	}

	public void setNombre_usuario(String pNombre_usuario) {
		nombre_usuario = pNombre_usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String pPassword) {
		password = pPassword;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String pUsuario) {
		usuario = pUsuario;
	}

}
