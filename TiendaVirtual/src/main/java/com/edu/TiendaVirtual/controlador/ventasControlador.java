package com.edu.TiendaVirtual.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.TiendaVirtual.modelo.Cliente;
import com.edu.TiendaVirtual.modelo.ClientesDAO;
import com.edu.TiendaVirtual.modelo.Producto;
import com.edu.TiendaVirtual.modelo.ProductosDao;
import com.edu.TiendaVirtual.modelo.VentaDetallado;
import com.edu.TiendaVirtual.modelo.VentaDetalladoDAO;
import com.edu.TiendaVirtual.modelo.VentaGeneralDAO;
import com.edu.TiendaVirtual.modelo.VentaJson;
import com.google.gson.Gson;

@Controller
@RequestMapping("ventas")
public class ventasControlador {
	
	@Autowired
	private ProductosDao productosDao;
	@Autowired
	private ClientesDAO clientesDao;
	@Autowired
	private VentaGeneralDAO ventaGeneralDao;
	@Autowired
	private VentaDetalladoDAO ventaDetalladoDao;
	
	@GetMapping
	public String getVentas(Model model) {
		List<Producto> productos = productosDao.findAll();
		model.addAttribute("productos", productos);
		List<Cliente> clientes = clientesDao.findAll();
		model.addAttribute("clientes", clientes);
		model.addAttribute("consecutivo_ventas", ventaGeneralDao.count());
		return "ventas";
	}
	
	@PostMapping()
	@ResponseBody
	public void salvarVenta(@RequestBody String jsonString) {
		System.out.println("Probando ejecucion");
		Gson gson = new Gson();
		VentaJson infoVenta = gson.fromJson(jsonString, VentaJson.class);
		ventaGeneralDao.save(infoVenta.getVenta());
		for (VentaDetallado detalle:infoVenta.getDetallado()) {
			ventaDetalladoDao.save(detalle);
		}
	}
}
