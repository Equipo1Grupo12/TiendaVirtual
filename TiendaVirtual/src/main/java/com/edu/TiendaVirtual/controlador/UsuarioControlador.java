package com.edu.TiendaVirtual.controlador;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.TiendaVirtual.modelo.Usuario;
import com.edu.TiendaVirtual.modelo.UsuarioDAO;
import com.edu.TiendaVirtual.servicios.serviciosCliente;


@Controller
@RequestMapping("usuarios")
public class UsuarioControlador {
	
	@Autowired
	private UsuarioDAO usuariosDAO; 
	
	@GetMapping
	public String getUsuarios(Model model){
		List<Usuario> usuarios = usuariosDAO.findAll();
		model.addAttribute("listado", usuarios);
		return "usuarios";
	}
	
	@PostMapping
	public String crearUsuario(HttpServletRequest request,Model model) {
		int cc = Integer.parseInt(request.getParameter("ced"));
		Usuario aux = new Usuario();
		aux.setCedula(cc);
		aux.setNombre_usuario(request.getParameter("nom_comp"));
		aux.setEmail_usuario(request.getParameter("correo"));
		aux.setUsuario(request.getParameter("user"));
		aux.setPassword(request.getParameter("contra"));
		
		Usuario x = usuariosDAO.save(aux);
		if(x != null) {
			model.addAttribute("alerta", "<div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div>");
			getUsuarios(model);
			return "usuarios";
		}else {
			model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>No Agregado.</div>");	
			getUsuarios(model);
			return "usuarios";
		}
	}
	
	@GetMapping(value = "/del/{cc}")
	public String eliminarUsuario(@PathVariable("cc") String cc, Model model) {
		int auxCc = Integer.parseInt(cc);
		usuariosDAO.deleteById(auxCc);
		model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div>");
		return "redirect:/usuarios";
	}
	

	@GetMapping(value = "{cc}")
	public String buscarPorCc(@PathVariable("cc") String cc, Model model) {
		int auxCc = Integer.parseInt(cc);
		Optional<Usuario> optionaluser= usuariosDAO.findById(auxCc);
		Usuario oldUser = optionaluser.get();
		model.addAttribute("olldC", oldUser.getCedula());
		model.addAttribute("olldN", oldUser.getNombre_usuario());
		model.addAttribute("olldE", oldUser.getEmail_usuario());
		model.addAttribute("olldU", oldUser.getUsuario());
		model.addAttribute("olldP", oldUser.getPassword());
		model.addAttribute("btnact", "<button type=\"submit\"class=\"btn btn-success btn-sm\"  name=\"crear\">Actualizar usuario</button>");
		model.addAttribute("btncancel", "<button type=\"submit\" class=\"btn btn-danger btn-sm\"  name=\"crear\">Cancelar</button>");
		getUsuarios(model);
		return "usuarios";
	}
	
	
	
	@PostMapping("{cc}")
	public String editarUsuario(@PathVariable("cc") String cc, Model model,HttpServletRequest request) {
		int auxCc = Integer.parseInt(cc);
		Optional<Usuario> optionaluser= usuariosDAO.findById(auxCc);
		Usuario aux = optionaluser.get();
		aux.setNombre_usuario(request.getParameter("nom_comp"));
		aux.setEmail_usuario(request.getParameter("correo"));
		aux.setUsuario(request.getParameter("user"));
		aux.setPassword(request.getParameter("contra"));
		usuariosDAO.save(aux);
		return "redirect:/usuarios";
	}
	
	//SI VEZ ESTO ANIMO MUCHACHOS JEJEEJ fd
	
	
	
	
}
