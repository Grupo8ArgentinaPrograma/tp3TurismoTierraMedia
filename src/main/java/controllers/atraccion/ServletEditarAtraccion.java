package controllers.atraccion;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import services.ServicioAtraccion;

@WebServlet("/admin/edit/atraccion/index.do")
public class ServletEditarAtraccion extends HttpServlet implements Servlet {
	
	private static final long serialVersionUID = -3891118851848932955L;
	private ServicioAtraccion servicioAtraccion;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioAtraccion = new ServicioAtraccion();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Atraccion> atracciones = servicioAtraccion.listar();
		req.setAttribute("atracciones", atracciones);
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/admin/edit/atraccion/index.jsp");
		dispatcher.forward(req, resp);

	}
}