package services;

import java.util.List;

import model.Usuario;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class ServicioUsuario {

	public List<Usuario> listar() {
		return DAOFactory.getUsuarioDAO().encontrarTodos();
	}

	public Usuario actualizar(String nombre, double dineroDisponible, double tiempoDisponible, String password) {

		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		Usuario usuario = usuarioDAO.encontrarPorNombre(nombre);
		usuario.setDineroDisponible(dineroDisponible);
		usuario.setTiempoDisponible(tiempoDisponible);
		usuario.setPassword(password);

		if (usuario.esValido()) {
			usuarioDAO.actualizarDatos(usuario);
		}

		return usuario;
	}

	public Usuario agregar(String nombre, int dineroDisponible, double tiempoDisponible, String tipoPreferido,
			int id, String password, int admin) {

		Usuario usuario = new Usuario(nombre, dineroDisponible, tiempoDisponible, tipoPreferido, id, password, admin);

		if (usuario.esValido()) {
			UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
			usuarioDAO.insertar(usuario);
		}

		return usuario;
	}

	public Usuario eliminar(String nombre) {

		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		Usuario usuario = usuarioDAO.encontrarPorNombre(nombre);

		usuarioDAO.borrar(usuario);
		return usuario;
	}

}
