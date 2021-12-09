package services;

import java.util.List;

import model.Usuario;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class ServicioUsuario {
	
	public List<Usuario> listar() {
		return DAOFactory.getUsuarioDAO().encontrarTodos();
	}
	
	public static Usuario actualizar(String nombre, double dineroDisponible, double tiempoDisponible, String password) {

		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		Usuario usuario = usuarioDAO.encontrarPorNombre(nombre);
		usuario.setDineroDisponible(dineroDisponible);
		usuario.setTiempoDisponible(tiempoDisponible);
		usuario.setPassword(password);
		//if (atraccion.isValid()) {
			usuarioDAO.actualizarDatos(usuario);
		//} 

		return usuario;
	}
	
}
