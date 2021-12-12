package controllers.atraccion;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import services.ServicioAtraccion;

@WebServlet("/atracciones/index.do")
public class ServletDetallesAtraccion extends HttpServlet implements Servlet {
	
	private static final long serialVersionUID = -3024831153119392589L;
	private ServicioAtraccion servicioAtraccion;

	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioAtraccion = new ServicioAtraccion();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		Atraccion atracciones = servicioAtraccion.encontrarPorNombre(nombre);
		
		req.setAttribute("atracciones", atracciones);
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/AtraccionDetalles.jsp");
		dispatcher.forward(req, resp);

	}	
}
