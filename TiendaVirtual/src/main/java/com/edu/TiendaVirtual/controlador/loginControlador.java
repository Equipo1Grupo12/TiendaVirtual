package com.edu.TiendaVirtual.controlador;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.TiendaVirtual.modelo.Usuario;
import com.edu.TiendaVirtual.modelo.UsuarioDAO;


@Controller
@RequestMapping("index")
public class loginControlador {
	
	@Autowired
	private UsuarioDAO usuariosDAO;
	
	
	public void creadorAdmin() {
		Usuario admin = new Usuario();
		admin.setCedula(999);
		admin.setEmail_usuario("admin@admin.com");
		admin.setNombre_usuario("adminalextremo");
		admin.setPassword("admin");
		admin.setUsuario("admin");
		usuariosDAO.save(admin);
	}
	
	
	@PostMapping
	public String postLogin(@RequestParam MultiValueMap body, HttpServletRequest request, Model model) {
		
		Usuario admin = new Usuario();
		admin.setCedula(999);
		admin.setEmail_usuario("admin@admin.com");
		admin.setNombre_usuario("admin");
		admin.setPassword("admin123456");
		admin.setUsuario("admininicial");
		usuariosDAO.save(admin);
		
		String user = (String) body.getFirst("user");
		String pass = (String) body.getFirst("pass");
		
		List<Usuario> usuarios = usuariosDAO.findAll();
		
		for (Usuario c_user : usuarios) {
			if (user.equals(c_user.getUsuario()) && pass.equals(c_user.getPassword())) {
				HttpSession session = request.getSession(true);
				session.setAttribute("user_name", c_user.getNombre_usuario());
				session.setAttribute("user", c_user.getUsuario());
				session.setAttribute("user_cc", c_user.getCedula());
				return "menu";
			}
		}
		model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>Usuario o contraseña erroneos, intente nuevamente.</div>");
		return "index";
	}
}
