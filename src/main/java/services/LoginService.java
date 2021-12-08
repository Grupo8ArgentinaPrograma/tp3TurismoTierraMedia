package services;

import model.Usuario;
import model.nullobjects.NullUser;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class LoginService {

	public Usuario login(String username, String password) {
		
		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		Usuario usuario = usuarioDAO.encontrarPorNombre(username);
		
		System.out.println("DAOFactory");
		System.out.println(username);
		System.out.println(usuario);
		if(usuario.isNull() || !usuario.checkPassword(password)) {
			usuario = NullUser.build();
		}
		return usuario;
	}
	
}
