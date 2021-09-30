package com.edu.TiendaVirtual.modelo;

import java.util.List;

public class VentaJson {
	
	private VentaGeneral venta;
	private List<VentaDetallado> detallado;
	
	public VentaGeneral getVenta() {
		return venta;
	}
	public void setVenta(VentaGeneral venta) {
		this.venta = venta;
	}
	
	public List<VentaDetallado> getDetallado() {
		return detallado;
	}
	public void setDetallado(List<VentaDetallado> detallado) {
		this.detallado = detallado;
	}
}
