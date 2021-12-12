package services;

import java.util.List;

import model.Promocion;
import persistence.commons.DAOFactory;

public class ServicioPromocion {

	public List<Promocion> listar() {
		return DAOFactory.getPromocionDAO().encontrarTodos();
	}

}
