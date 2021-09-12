package com.example.demo.controlador;

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

import com.example.demo.modelo.Usuario;
import com.example.demo.modelo.UsuarioDAO;


@Controller
@RequestMapping("usuarios")
public class UsuarioControlador {
	
	@Autowired
	private UsuarioDAO usuariosDAO; 
	
	@GetMapping()
	public void UsuariosPage(){
	}
	
	@GetMapping("/listar")
	public ResponseEntity<List<Usuario>> getUsuarios(){
		List<Usuario> usuarios = usuariosDAO.findAll();
		return ResponseEntity.ok(usuarios);
	}
	
	@RequestMapping(value = "{cc}", method=RequestMethod.GET)
	public ResponseEntity<Usuario> getUsuariosByCc(@PathVariable("cc") int cc){
		Optional<Usuario> optionaluser= usuariosDAO.findById(cc);
		if(optionaluser.isPresent()) {
			return ResponseEntity.ok(optionaluser.get());
		} else {
			return ResponseEntity.noContent().build();
		}	
	}
	
	@PostMapping("/guardar")
	public ResponseEntity<Usuario> insertUsuario(@RequestBody Usuario u){
		Usuario aux = usuariosDAO.save(u);
		return ResponseEntity.ok(aux);
	}
	
	@DeleteMapping("/eliminar/{cc}")
	public ResponseEntity<Usuario> deleteUsuario(@PathVariable("cc") int cc){
		usuariosDAO.deleteById(cc);
		return ResponseEntity.ok(null);	
	}
	
	@PutMapping("/actualizar")
	public void actualizar(@RequestBody Usuario usuarios) {
		usuariosDAO.save(usuarios);
	}
}
