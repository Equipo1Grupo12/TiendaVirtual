package com.edu.TiendaVirtual.modelo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="productos")
public class Producto {

	@Id
	@Column(name="codigo_producto", length = 20)
	private int codigo_producto; 
	
	@Column(name="nombre_producto", length = 50)
	private String nombre_producto;
	
	@Column(name="nit_Proveedor", length = 20)
	private int nit_Proveedor; 
	
	@Column(name="precio_compra")
	private double precio_compra;
	
	@Column(name="iva_compra")
	private double iva_compra;
	
	@Column(name="precio_venta")
	private double precio_venta;

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int pCodigo_producto) {
		codigo_producto = pCodigo_producto;
	}

	public String getNombre_producto() {
		return nombre_producto;
	}

	public void setNombre_producto(String pNombre_producto) {
		nombre_producto = pNombre_producto;
	}

	public int getNit_Proveedor() {
		return nit_Proveedor;
	}

	public void setNit_Proveedor(int pNit_Proveedor) {
		nit_Proveedor = pNit_Proveedor;
	}

	public double getPrecio_compra() {
		return precio_compra;
	}

	public void setPrecio_compra(double pPrecio_compra) {
		precio_compra = pPrecio_compra;
	}

	public double getIva_compra() {
		return iva_compra;
	}

	public void setIva_compra(double pIva_compra) {
		iva_compra = pIva_compra;
	}

	public double getPrecio_venta() {
		return precio_venta;
	}

	public void setPrecio_venta(double pPrecio_venta) {
		precio_venta = pPrecio_venta;
	}
	
	
	
}
