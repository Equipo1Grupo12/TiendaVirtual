	package com.edu.TiendaVirtual.servicios;

import java.util.List;
import com.edu.TiendaVirtual.modelo.*;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

public interface serviciosCliente {
	
	public List<Cliente> darListado();
	
	public int insertarCliente(@RequestBody Cliente u);
	
	public void eliminarCliente(@PathVariable("cc") int cc);
	
	public void editarCliente(@PathVariable("cc") Cliente u);
	
	public Cliente getClienteByCc(@PathVariable("cc") int cc);

	
	
}
