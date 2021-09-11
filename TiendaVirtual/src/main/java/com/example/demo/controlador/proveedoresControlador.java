package com.example.demo.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("proveedores")
public class proveedoresControlador {

	@GetMapping
	public String getProveedores() {
		return "proveedores";
	}
}
