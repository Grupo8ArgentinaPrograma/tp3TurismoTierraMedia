package pronadoborrar;

import java.util.ArrayList;
import java.util.List;

import model.Atraccion;
import model.Ofertable;
import model.Promocion;
import model.Usuario;
import persistence.commons.DAOFactory;
import persistence.impl.AtraccionDAOImpl;
import persistence.impl.PromocionDAOImpl;
import persistence.impl.UsuarioDAOImpl;

public class probando {

	public static void main(String[] args) {
		AtraccionDAOImpl atra = (AtraccionDAOImpl) new DAOFactory().getAtraccionDAO();
		PromocionDAOImpl promo = (PromocionDAOImpl) new DAOFactory().getPromocionDAO();
		UsuarioDAOImpl usu = (UsuarioDAOImpl) DAOFactory.getUsuarioDAO();
		ArrayList<Ofertable> nombre= new ArrayList<Ofertable>();
		
		
		
		//List<Promocion>todas = promo.encontrarTodos();
		List<Atraccion>todas = atra.encontrarTodos();
		
//		for (Promocion atraccion : todas) {
//			System.out.println(atraccion);
//		}
		
		Atraccion at1 = todas.get(1);
		
		System.out.println(at1);
		Usuario u1 = new Usuario("nuevo", 100, 100, "Aventura",100 , nombre, "nuevo", 0);
		
		u1.comprarProducto(at1);
		usu.actualizarDatosDos(u1);
		atra.actualizarDatos(at1);
		System.out.println(u1.getDineroDisponible());
		
		
		
	}

}
