package com.edu.TiendaVirtual.controlador;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.TiendaVirtual.modelo.Cliente;
import com.edu.TiendaVirtual.modelo.ClientesDAO;

@Controller
@RequestMapping("clientes")
public class ClienteControlador {
	
	@Autowired
	private ClientesDAO clientesDAO; 
	
	@GetMapping
	public String getclientes(Model model){
		List<Cliente> clientes = clientesDAO.findAll();
		model.addAttribute("listado", clientes);
		model.addAttribute("btncrear", "<button type=\"submit\" id=\"btn botonCrear\" class=\"btn btnUsuarios\" name=\"crear\">Crear</button>");
		return "clientes";
	}
	
	@PostMapping
	public String crearcliente(HttpServletRequest request,Model model) {
		int cc = Integer.parseInt(request.getParameter("ced"));
		Cliente aux = new Cliente();
		aux.setCedula(cc);
		aux.setTelefono(request.getParameter("telefono"));
		aux.setNombre(request.getParameter("nom_comp"));		
		aux.setEmail(request.getParameter("correo"));
		aux.setDireccion(request.getParameter("direccion"));
		
		Cliente x = clientesDAO.save(aux);
		if(x != null) {
			model.addAttribute("alerta", "<div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div>");
			getclientes(model);
			return "clientes";
		}else {
			model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>No Agregado.</div>");	
			getclientes(model);
			return "clientes";
		}
	}
	
	@GetMapping(value = "/del/{cc}")
	public String eliminarcliente(@PathVariable("cc") String cc, Model model) {
		int auxCc = Integer.parseInt(cc);
		clientesDAO.deleteById(auxCc);
		model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div>");
		return "redirect:/clientes";
	}	

	@GetMapping(value = "{cc}")
	public String buscarPorCc(@PathVariable("cc") String cc, Model model) {
		int auxCc = Integer.parseInt(cc);
		Optional<Cliente> optionaluser= clientesDAO.findById(auxCc);
		Cliente oldUser = optionaluser.get();
		getclientes(model);
		model.addAttribute("olldC", oldUser.getCedula());
		model.addAttribute("olldN", oldUser.getTelefono());
		model.addAttribute("olldE", oldUser.getNombre());
		model.addAttribute("olldU", oldUser.getEmail());
		model.addAttribute("olldP", oldUser.getDireccion());
		model.addAttribute("btncrear", "");
		model.addAttribute("btnact", "<button type=\"submit\"class=\"btn btn-success btn-sm\"  name=\"crear\">Actualizar cliente</button>");
		model.addAttribute("btncancel", "<button type=\"submit\" class=\"btn btn-danger btn-sm\"  name=\"crear\">Cancelar</button>");
		return "clientes";
	}	
	
	@PostMapping("{cc}")
	public String editarcliente(@PathVariable("cc") String cc, Model model,HttpServletRequest request) {
		int auxCc = Integer.parseInt(cc);
		Optional<Cliente> optionaluser= clientesDAO.findById(auxCc);
		Cliente aux = optionaluser.get();
		aux.setTelefono(request.getParameter("telefono"));
		aux.setNombre(request.getParameter("nom_comp"));
		aux.setEmail(request.getParameter("correo"));
		aux.setDireccion(request.getParameter("direccion"));
		clientesDAO.save(aux);
		return "redirect:/clientes";
	}
}