package controllers.atraccion;

import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Ofertable;
import model.Usuario;
import services.ServicioItinerario;

@WebServlet("/atracciones/itinerario.do")
public class ServletItinerario extends HttpServlet {

	private static final long serialVersionUID = 628556669577190675L;
	private ServicioItinerario servicioItinerario;

	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioItinerario = new ServicioItinerario();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		System.out.println("Servlet");
		Usuario usuario = (Usuario) req.getSession().getAttribute("usuario");
		ArrayList<Ofertable> productosComprados = servicioItinerario.obtenerItinerario(usuario);

		if (!productosComprados.isEmpty()) {
			System.out.println("HAYYYYYYY");
			req.getSession().setAttribute("itinerario", productosComprados);
			req.getSession().setAttribute("usuario", usuario);
		}else {
			System.out.println("NOOOOOO");
		}
		
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/atracciones/itinerario.jsp");
		dispatcher.forward(req, resp);
	}

}