package services;

import java.util.ArrayList;

import model.Ofertable;
import model.Usuario;
import persistence.commons.DAOFactory;

public class ServicioItinerario {

	public Usuario itinerario(String username) {
		
		System.out.println("servicio");
		
		username = "Frodo";
		Usuario usuario = DAOFactory
				.getUsuarioDAO()
				.encontrarPorNombre(username);
		System.out.println(usuario);

		
	ArrayList<Ofertable> compras = DAOFactory.getItinerarioDaoImpl().cargarComprasUsuario(usuario.getId());
		System.out.println(compras);
		
		return usuario;
				
	}

	public int cuadrado(int x) {
		return x * x;
	}
}
