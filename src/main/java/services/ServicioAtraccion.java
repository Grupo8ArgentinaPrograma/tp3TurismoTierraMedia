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
	
	

	public Atraccion actualizar(Integer id, String nombre, Integer costo, Double tiempo, Integer cupo) {

		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		Atraccion atraccion = atraccionDAO.encontrarPorNombre(nombre);

		atraccion.setNombre(nombre);
		atraccion.setCosto(costo);
		atraccion.setTiempo(tiempo);
		atraccion.setCupo(cupo);

		//if (atraccion.isValid()) {
			atraccionDAO.actualizarDatos(atraccion);
		//} 

		return atraccion;
	}


}
