package com.edu.TiendaVirtual.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.TiendaVirtual.modelo.Cliente;
import com.edu.TiendaVirtual.modelo.ClientesDAO;
import com.edu.TiendaVirtual.modelo.Usuario;
import com.edu.TiendaVirtual.modelo.UsuarioDAO;

@Controller
@RequestMapping("reportes")
public class reportesControlador {
	
	@Autowired
	private UsuarioDAO usuariosDAO; 
	
	@Autowired
	private ClientesDAO clientesDAO;
	
	@GetMapping
	public String getReportes(Model model) {
		List<Usuario> usuarios = usuariosDAO.findAll();
		model.addAttribute("lUsuarios", usuarios);
		
		List<Cliente> clientes = clientesDAO.findAll();
		model.addAttribute("lClientes", clientes);
		
		return "reportes";
	}
	

}
