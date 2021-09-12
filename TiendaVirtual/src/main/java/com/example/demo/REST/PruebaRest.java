package com.example.demo.REST;

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

import com.example.demo.modelo.Usuario;
import com.example.demo.modelo.UsuarioDAO;

import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("app")
public class PruebaRest {
	 
	@Autowired
	private UsuarioDAO dao;
	
	
	@GetMapping("/listar")
	public ResponseEntity<List<Usuario>> getUsuarios(){
		List<Usuario> usuarios = dao.findAll();
		return ResponseEntity.ok(usuarios);
	}
	
	@RequestMapping(value = "{cc}")
	public ResponseEntity<Usuario> getUsuariosByCc(@PathVariable("cc") int cc){
		Optional<Usuario> optionaluser= dao.findById(cc);
		if(optionaluser.isPresent()) {
			return ResponseEntity.ok(optionaluser.get());
		}else {
			return ResponseEntity.noContent().build();
		}	
	}
	
	@PostMapping
	public ResponseEntity<Usuario> insertUsuario(@RequestBody Usuario u){
		Usuario aux =dao.save(u);
		return ResponseEntity.ok(aux);
	}
	
	@DeleteMapping(value = "{cc}")
	public ResponseEntity<Usuario> deleteUsuario(@PathVariable("cc") int cc){
		dao.deleteById(cc);
		return ResponseEntity.ok(null);
		
	}
	
	
	/*@PutMapping
	public ResponseEntity<Usuario> updateUsuario(@RequestBody Usuario u){
		Optional<Usuario> ou = dao.findById(u.getCedula());
		if (ou.isPresent()) {
			Usuario aux = ou.get();
			aux.setNombre_usuario(u.getNombre_usuario());
			dao.save(aux);
			return ResponseEntity.ok(aux);
		}else {
			return ResponseEntity.notFound().build();
		}
	}*/
	

}
