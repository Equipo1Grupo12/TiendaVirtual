package com.edu.TiendaVirtual.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("index")
public class loginControlador {

	@PostMapping
	public String postLogin(@RequestParam MultiValueMap body ) {
		String user = (String) body .getFirst("user");
		String pass = (String) body .getFirst("pass");
		
		if (user.equals("admininicial") && pass.equals("admin123456")) {
			return "menu";
		} else {
			return "index";
		}
	}
}
