package com.edu.TiendaVirtual.modelo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="clientes")
public class Cliente {
	
	@Id
	@Column(name="cedula")
	private int cedula;
	
	@Column(name="telefono")
	private long telefono;
	
	@Column(name="nombre_cliente",length = 50)
	private String nombre_cliente;
		
	@Column(name="email_cliente",length = 50)
	private String email_cliente;
	
	@Column(name="direccion",length = 80)
	private String direccion;

	public int getCedula() {
		return cedula;
	}

	public void setCedula(int cedula) {
		this.cedula = cedula;
	}

	public long getTelefono() {
		return telefono;
	}

	public void setTelefono(long telefono) {
		this.telefono = telefono;
	}

	public String getNombre_cliente() {
		return nombre_cliente;
	}

	public void setNombre_cliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}

	public String getEmail_cliente() {
		return email_cliente;
	}

	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
}
