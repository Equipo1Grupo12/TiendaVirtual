package com.edu.TiendaVirtual.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ventaGeneral")
public class VentaGeneral {
	/* cod_venta
	 * cedula_cliente
	 * cedula_usuario
	 * iva_venta
	 * total_venta
	 * valor_venta
	 */
	
	@Id
	@Column(name="cod_venta")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cod_venta;
	
	@Column(name="cedula_cliente")
	private int cedula_cliente;
	
	@Column(name="cedula_usuario")
	private int cedula_usuario;
	
	@Column(name="iva_venta", length = 20)
	private int iva_venta;
	
	@Column(name="total_venta", length = 20)
	private int total_venta;
	
	@Column(name="valor_venta", length = 20)
	private int valor_venta;

	public int getCod_venta() {
		return cod_venta;
	}

	public void setCod_venta(int cod_venta) {
		this.cod_venta = cod_venta;
	}

	public int getCedula_cliente() {
		return cedula_cliente;
	}

	public void setCedula_cliente(int cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}

	public int getCedula_usuario() {
		return cedula_usuario;
	}

	public void setCedula_usuario(int cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}

	public int getIva_venta() {
		return iva_venta;
	}

	public void setIva_venta(int iva_venta) {
		this.iva_venta = iva_venta;
	}

	public int getTotal_venta() {
		return total_venta;
	}

	public void setTotal_venta(int total_venta) {
		this.total_venta = total_venta;
	}

	public int getValor_venta() {
		return valor_venta;
	}

	public void setValor_venta(int valor_venta) {
		this.valor_venta = valor_venta;
	}
	
	
}
