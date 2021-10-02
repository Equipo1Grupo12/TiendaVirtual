package com.edu.TiendaVirtual;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.edu.TiendaVirtual.controlador.loginControlador;

@SpringBootApplication
public class Springv1Application {
	
	private loginControlador lg;
	
	public void crear() {
		lg.creadorAdmin();
	}
	
	public static void main(String[] args) {
		SpringApplication.run(Springv1Application.class, args);
		
		
	}
}
