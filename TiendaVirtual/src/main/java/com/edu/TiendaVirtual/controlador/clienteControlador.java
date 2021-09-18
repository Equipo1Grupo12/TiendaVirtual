package com.edu.TiendaVirtual.controlador;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.TiendaVirtual.modelo.*;


@Controller
@RequestMapping("clientes")
public class clienteControlador {
	
	@Autowired
	private ClienteDAO clientesDAO; 
	
	@GetMapping()
	public void clientesPage(){
	}
	
	@GetMapping("/listar")
	public ResponseEntity<List<Cliente>> getclientes(){
		List<Cliente> clientes = clientesDAO.findAll();
		return ResponseEntity.ok(clientes);
	}
	
	@RequestMapping(value = "{cc}", method=RequestMethod.GET)
	public ResponseEntity<Cliente> getclientesByCc(@PathVariable("cc") int cc){
		Optional<Cliente> optionaluser= clientesDAO.findById(cc);
		if(optionaluser.isPresent()) {
			return ResponseEntity.ok(optionaluser.get());
		} else {
			return ResponseEntity.noContent().build();
		}	
	}
	
	@PostMapping("/guardar")
	public ResponseEntity<Cliente> insertcliente(@RequestBody Cliente u){
		Cliente aux = clientesDAO.save(u);
		return ResponseEntity.ok(aux);
	}
	
	@DeleteMapping("/eliminar/{cc}")
	public ResponseEntity<Cliente> deletecliente(@PathVariable("cc") int cc){
		clientesDAO.deleteById(cc);
		return ResponseEntity.ok(null);	
	}
	
	@PutMapping("/actualizar")
	public void actualizar(@RequestBody Cliente clientes) {
		clientesDAO.save(clientes);
	}
} 
