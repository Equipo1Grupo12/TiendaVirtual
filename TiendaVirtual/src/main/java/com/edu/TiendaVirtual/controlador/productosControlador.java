package com.edu.TiendaVirtual.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("productos")
public class productosControlador {

	@GetMapping
	public String getProductos() {
		return "productos";
	}
}
