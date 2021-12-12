package services;

import java.util.HashMap;
import java.util.Map;
import model.Promocion;
import model.Usuario;
import persistence.commons.DAOFactory;
import persistence.impl.ItineraioDAOImpl;
import persistence.impl.PromocionDAOImpl;
import persistence.impl.UsuarioDAOImpl;

public class BuyPromocionService2 {

	PromocionDAOImpl promoDAO = (PromocionDAOImpl) DAOFactory.getPromocionDAO();
	UsuarioDAOImpl userDAO = (UsuarioDAOImpl) DAOFactory.getUsuarioDAO();
	ItineraioDAOImpl itinerario = DAOFactory.getItinerarioDaoImpl();
	
	
	
	public Map<String, String> buy(Integer userId, Integer promoId) {
		Map<String, String> errors = new HashMap<String, String>();

		Usuario user = userDAO.encontrarPorId(userId);
		Promocion promocion = promoDAO.encontrarPorID(promoId);
		
		System.out.println(promocion);
		if (!promocion.tieneCupo()) {
	
			errors.put("attraction", "No hay cupo disponible");
		}
		if (!(user.getDineroDisponible()>=promocion.getCosto())) {
			errors.put("user", "No tienes dinero suficiente");
		}
		if (!(user.getTiempoDisponible()>=promocion.getTiempoRecorrido())) {
			errors.put("user", "No tienes tiempo suficiente");
		}

		
		
		if (errors.isEmpty()) { 
			user.comprarProducto(promocion);
			System.out.println(promocion);
			promoDAO.actualizarDatos(promocion);
			userDAO.actualizarDatosDos(user);
			itinerario.insertarEnItinerario(promocion, user);
		
		}

		return errors;

	}

}
