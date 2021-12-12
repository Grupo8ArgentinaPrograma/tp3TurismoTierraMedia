package services;

import java.util.List;

import model.Promocion;
import persistence.commons.DAOFactory;
import persistence.impl.PromocionDAOImpl;

public class ServicioPromocionMau {
	public List<Promocion> listar() {
		return DAOFactory.getPromocionDAO().encontrarTodos();
	}

	public Promocion find(Integer id) {
		PromocionDAOImpl promoDAO = (PromocionDAOImpl) DAOFactory.getPromocionDAO();
		return promoDAO.encontrarPorID(id);
	}
}