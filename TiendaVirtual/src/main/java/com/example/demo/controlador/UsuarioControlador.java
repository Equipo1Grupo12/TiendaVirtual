package com.example.demo.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("usuarios")
public class UsuarioControlador {
	
	@GetMapping
	public String getUsuarios() {
		return "usuarios";
	}
	
	
	

}
