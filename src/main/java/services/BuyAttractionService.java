package services;

import java.util.HashMap;
import java.util.Map;
import model.Atraccion;
import model.Usuario;
import persistence.commons.DAOFactory;
import persistence.impl.AtraccionDAOImpl;
import persistence.impl.ItineraioDAOImpl;
import persistence.impl.UsuarioDAOImpl;

public class BuyAttractionService {

	AtraccionDAOImpl atraccionDAO = (AtraccionDAOImpl) DAOFactory.getAtraccionDAO();
	UsuarioDAOImpl userDAO = (UsuarioDAOImpl) DAOFactory.getUsuarioDAO();
	ItineraioDAOImpl itinerario = DAOFactory.getItinerarioDaoImpl();
	
	public Map<String, String> buy(Integer userId, Integer attractionId) {
		Map<String, String> errors = new HashMap<String, String>();

		Usuario user = userDAO.encontrarPorId(userId);
		System.out.println(user);
		Atraccion atraccion = atraccionDAO.encontrarPorID(attractionId);
		System.out.println(atraccion);
		if (!atraccion.tieneCupo()) {
	
			errors.put("attraction", "No hay cupo disponible");
		}
		if (!(user.getDineroDisponible()>=atraccion.getCosto())) {
			errors.put("user", "No tienes dinero suficiente");
		}
		if (!(user.getTiempoDisponible()>=atraccion.getTiempoRecorrido())) {
			errors.put("user", "No tienes tiempo suficiente");
		}

		if (errors.isEmpty()) { 
			user.comprarProducto(atraccion);

			atraccionDAO.actualizarDatos(atraccion);
			userDAO.actualizarDatos(user);
			itinerario.insertarEnItinerario(atraccion, user);
			
		}

		return errors;

	}

}
