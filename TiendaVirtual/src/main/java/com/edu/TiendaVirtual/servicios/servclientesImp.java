package com.edu.TiendaVirtual.servicios;

import java.util.*;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.edu.TiendaVirtual.modelo.Cliente;
import com.edu.TiendaVirtual.modelo.ClienteDAO;

@Service
public class servclientesImp implements serviciosCliente {
	
	@Autowired
	ClienteDAO dao;
	
	@Override
	public List<Cliente> darListado() {
		List<Cliente> listado = dao.findAll();
		return listado;
	}

	@Override
	public int insertarCliente(Cliente u) {
		int valor = 0;
		Cliente aux =dao.save(u);
		if(aux != null) {
			valor = 1;
		}else {
			valor=0;
		}
		return valor ;
	}

	@Override
	public void eliminarCliente( int cc) {
		dao.deleteById(cc);
		
	}

	@Override
	public void editarCliente(Cliente u) {
		dao.save(u);
	}

	
	@Override
	public Cliente getClienteByCc(@PathVariable("cc") int cc){
		Optional<Cliente> optionaluser= dao.findById(cc);
		if(optionaluser.isPresent()) {
			return optionaluser.get();
		}else {
			return null;
		}	
	}
}
