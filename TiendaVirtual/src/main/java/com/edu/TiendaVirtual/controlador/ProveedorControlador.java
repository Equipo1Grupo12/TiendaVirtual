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

import com.edu.TiendaVirtual.modelo.Proveedor;
import com.edu.TiendaVirtual.modelo.ProveedoresDAO;

@Controller
@RequestMapping("proveedores")
public class ProveedorControlador {
	
	@Autowired
	private ProveedoresDAO proveedoresDAO; 
	
	@GetMapping
	public String getProveedores(Model model){
		List<Proveedor> proveedores = proveedoresDAO.findAll();
		model.addAttribute("listado", proveedores);
		model.addAttribute("btncrear", "<button type=\"submit\" id=\"btn botonCrear\" class=\"btn btnUsuarios\" name=\"crear\">Crear</button>");
		return "proveedores";
	}
	
	@PostMapping
	public String crearProveedor(HttpServletRequest request,Model model) {
		int nit = Integer.parseInt(request.getParameter("nit"));
		Proveedor aux = new Proveedor();
		aux.setNit(nit);;
		aux.setTelefono(request.getParameter("telefono"));
		aux.setNombre(request.getParameter("nom_comp"));		
		aux.setCiudad(request.getParameter("ciudad"));
		aux.setDireccion(request.getParameter("direccion"));
		
		Proveedor x = proveedoresDAO.save(aux);
		if(x != null) {
			model.addAttribute("alerta", "<div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div>");
			getProveedores(model);
			return "proveedores";
		}else {
			model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>No Agregado.</div>");	
			getProveedores(model);
			return "proveedores";
		}
	}
	
	@GetMapping(value = "/del/{nit}")
	public String eliminarProveedor(@PathVariable("nit") String nit, Model model) {
		int auxNit = Integer.parseInt(nit);
		proveedoresDAO.deleteById(auxNit);
		model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div>");
		return "redirect:/proveedores";
	}	

	@GetMapping(value = "{nit}")
	public String buscarPorNit(@PathVariable("nit") String nit, Model model) {
		int auxNit = Integer.parseInt(nit);
		Optional<Proveedor> optionaluser= proveedoresDAO.findById(auxNit);
		Proveedor oldUser = optionaluser.get();
		getProveedores(model);
		model.addAttribute("olldC", oldUser.getNit());
		model.addAttribute("olldN", oldUser.getTelefono());
		model.addAttribute("olldE", oldUser.getNombre());
		model.addAttribute("olldU", oldUser.getCiudad());
		model.addAttribute("olldP", oldUser.getDireccion());
		model.addAttribute("btnact", "<button type=\"submit\"class=\"btn btn-success btn-sm\"  name=\"crear\">Actualizar cliente</button>");
		model.addAttribute("btncancel", "<button type=\"submit\" class=\"btn btn-danger btn-sm\"  name=\"crear\">Cancelar</button>");
		model.addAttribute("btncrear", "");
		return "proveedores";
	}	
	
	@PostMapping("{nit}")
	public String editarProveedor(@PathVariable("nit") String nit, Model model,HttpServletRequest request) {
		int auxNit = Integer.parseInt(nit);
		Optional<Proveedor> optionaluser= proveedoresDAO.findById(auxNit);
		Proveedor aux = optionaluser.get();
		aux.setTelefono(request.getParameter("telefono"));
		aux.setNombre(request.getParameter("nom_comp"));
		aux.setCiudad(request.getParameter("ciudad"));
		aux.setDireccion(request.getParameter("direccion"));
		proveedoresDAO.save(aux);
		return "redirect:/proveedores";
	}
}