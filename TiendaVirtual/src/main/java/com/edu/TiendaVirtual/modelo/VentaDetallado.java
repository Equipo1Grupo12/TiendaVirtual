package com.edu.TiendaVirtual.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ventaDetallado")
public class VentaDetallado {
	/* cod_detalle_venta
	 * cantidad
	 * cod_producto
	 * cod_venta
	 * valor_total
	 * valor_venta
	 * valor_iva
	 */
	
	@Id
	@Column(name="cod_detalle_venta")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cod_detalle_venta;
	
	@Column(name="cantidad")
	private int cantidad;
	
	@Column(name="codigo_producto", length = 20)
	private int codigo_producto;
	
	@Column(name="cod_venta", length = 20)
	private int cod_venta;
	
	@Column(name="valor_total", length = 20)
	private int valor_total;
	
	@Column(name="valor_venta", length = 20)
	private int valor_venta;
	
	@Column(name="valor_iva", length = 20)
	private int valor_iva;

	public int getCod_detalle_venta() {
		return cod_detalle_venta;
	}

	public void setCod_detalle_venta(int cod_detalle_venta) {
		this.cod_detalle_venta = cod_detalle_venta;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public int getCod_venta() {
		return cod_venta;
	}

	public void setCod_venta(int cod_venta) {
		this.cod_venta = cod_venta;
	}

	public int getValor_total() {
		return valor_total;
	}

	public void setValor_total(int valor_total) {
		this.valor_total = valor_total;
	}

	public int getValor_venta() {
		return valor_venta;
	}

	public void setValor_venta(int valor_venta) {
		this.valor_venta = valor_venta;
	}

	public int getValor_iva() {
		return valor_iva;
	}

	public void setValor_iva(int valor_iva) {
		this.valor_iva = valor_iva;
	}
	
	
	
}
