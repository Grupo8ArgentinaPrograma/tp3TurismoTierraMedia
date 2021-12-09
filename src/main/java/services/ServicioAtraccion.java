package services;

import java.util.List;

import model.Atraccion;
import persistence.AtraccionDAO;
import persistence.commons.DAOFactory;

public class ServicioAtraccion {
	public List<Atraccion> listar() {
		return DAOFactory.getAtraccionDAO().encontrarTodos();
	}
	
	public Atraccion find(Integer id) {
		AtraccionDAO attractionDAO = DAOFactory.getAtraccionDAO();
		return attractionDAO.encontrarPorID(id);
	}
	
	public Atraccion encontrarPorNombre(String nombre) {
		AtraccionDAO attractionDAO = DAOFactory.getAtraccionDAO();
		
	return attractionDAO.encontrarPorNombre(nombre);
	}
	
	
}
