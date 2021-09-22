package com.edu.TiendaVirtual.controlador;

import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.edu.TiendaVirtual.modelo.Producto;
import com.edu.TiendaVirtual.modelo.ProductosDao;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvException;


@Controller
@RequestMapping ("productos")
public class productosControlador {
	
	@Autowired
	private ProductosDao dao;
	
	private String carpetaDestino = "src/main/webapp/Archivos/";
	
	@PostMapping
	public String subirArchivo ( @RequestParam ("arch") MultipartFile arch,Model model) throws IOException, CsvException {
		if (!arch.isEmpty() ) {
			byte[] tamanio =arch.getBytes();
			Path rutaDestino = Paths.get(carpetaDestino + arch.getOriginalFilename());
			Files.write(rutaDestino, tamanio);
			model.addAttribute("alerta", "<div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div>");
			
			CSVReader csvReader = new CSVReader(new FileReader("src/main/webapp/Archivos/archivo.csv"));
			String [] siguiente;
			
			while ((siguiente = csvReader.readNext()) != null ) {	
				if (siguiente != null) {
					Producto aux = new Producto();
					aux.setCodigo_producto(Integer.parseInt(siguiente[0]));
					aux.setNombre_producto(siguiente [1]);
					aux.setNit_Proveedor(Integer.parseInt(siguiente[2]));
					aux.setPrecio_compra(Double.parseDouble(siguiente[3]));
					aux.setIva_compra(Double.parseDouble(siguiente[4]));
					aux.setPrecio_venta(Double.parseDouble(siguiente[5]));
					dao.save(aux);
				}	
			}
		}
		return "redirect:/productos";
	}
	
	
	@GetMapping
	public String getProductos(Model model) {
		List<Producto> productos = dao.findAll();
		model.addAttribute("listado", productos);
		return "productos";
	}
	
	
	@GetMapping(value = "/del/{nit}")
	public String eliminarUsuario(@PathVariable("nit") String nit, Model model) {
		int auxCc = Integer.parseInt(nit);
		dao.deleteById(auxCc);
		model.addAttribute("alerta", "<div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div>");
		return "redirect:/productos";
	}
	
	
}
