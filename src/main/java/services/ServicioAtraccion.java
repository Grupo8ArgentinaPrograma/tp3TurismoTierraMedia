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
	
	public Atraccion actualizar(String nombre, double costo, double tiempo, int cupo) {

		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		Atraccion atraccion = atraccionDAO.encontrarPorNombre(nombre);
		
		atraccion.setCosto(costo);
		atraccion.setTiempo(tiempo);
		atraccion.setCupo(cupo);

		if (atraccion.esValida()) {
			atraccionDAO.actualizarDatos(atraccion);
		} 

		return atraccion;
	}
	public Atraccion agregar(int id, String nombre, double costo, double tiempo, int cupo, String tipo,String descripcion, String imagen) {
		
		Atraccion atraccion = new Atraccion(id, nombre, costo, tiempo, cupo, tipo, descripcion, imagen);
		
		if (atraccion.esValida()) {
			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
			atraccionDAO.insertar(atraccion);
		}
		
		return atraccion;
	}
	
	public Atraccion eliminar(String nombre) {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		Atraccion atraccion = atraccionDAO.encontrarPorNombre(nombre);
		
		atraccionDAO.borrar(atraccion);
		return atraccion;
	}

}
