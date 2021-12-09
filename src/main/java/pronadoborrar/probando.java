package pronadoborrar;

import java.util.List;

import model.Promocion;
import persistence.commons.DAOFactory;
import persistence.impl.AtraccionDAOImpl;
import persistence.impl.PromocionDAOImpl;

public class probando {

	public static void main(String[] args) {
		AtraccionDAOImpl atra = (AtraccionDAOImpl) new DAOFactory().getAtraccionDAO();
		PromocionDAOImpl promo = (PromocionDAOImpl) new DAOFactory().getPromocionDAO();
		
		List<Promocion>todas = promo.encontrarTodos();
		
		for (Promocion atraccion : todas) {
			System.out.println(atraccion);
		}
		
		
		
	}

}
