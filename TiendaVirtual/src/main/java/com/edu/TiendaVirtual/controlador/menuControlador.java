package com.edu.TiendaVirtual.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("menu")
public class menuControlador {

	@GetMapping
	public String getMenu() {
		return "menu";
	}
}
