package services;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import model.Ofertable;

import model.Usuario;
import persistence.commons.Conexion;
import persistence.commons.DAOFactory;
import persistence.commons.MissingDataException;
import persistence.impl.AtraccionDAOImpl;
import persistence.impl.PromocionDAOImpl;
import persistence.impl.UsuarioDAOImpl;


public class ServicioItinerario {

	public ArrayList<Ofertable> obtenerItinerario(Usuario usuario) {
	
		
		AtraccionDAOImpl atrraccionDAO = new AtraccionDAOImpl();
		PromocionDAOImpl promocionDAO = new PromocionDAOImpl();
		ArrayList<Ofertable> itinerario = new ArrayList<Ofertable>();
		try {
			String sql = "SELECT * FROM Itinerario where visitante_id = ?";
			Connection conn = Conexion.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, Integer.toString(usuario.getId()));
			ResultSet resultados = statement.executeQuery();

			while (resultados.next()) {
				if (resultados.getString(3).equals("Atraccion")) {
					itinerario.add(atrraccionDAO.encontrarPorID(resultados.getInt(5)));
				} else {
					itinerario.add(promocionDAO.encontrarPorID(resultados.getInt(4)));
				}
			}
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
		
		System.out.println(itinerario);
		
	
		return itinerario;
				
		/*return DAOFactory
				.getItinerarioDaoImpl()
				.cargarComprasUsuario(usuario.getId());*/
	}
}