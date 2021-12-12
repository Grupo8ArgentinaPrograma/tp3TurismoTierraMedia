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

@WebServlet("/admin/add/atraccion/index.ad")
public class ServletAgregarAtraccion extends HttpServlet implements Servlet {

	private static final long serialVersionUID = -108130105150282254L;
	private ServicioAtraccion servicioAtraccion;

	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioAtraccion = new ServicioAtraccion();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//buscar tipos de atraccion
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/add/atraccion/index.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String nombre = req.getParameter("nombre");
		double costo = Double.parseDouble(req.getParameter("costo"));
		double tiempo = Double.parseDouble(req.getParameter("tiempo"));
		int cupo = Integer.parseInt(req.getParameter("cupo"));
		String tipo = req.getParameter("tipo");
		String descripcion = req.getParameter("descripcion");
		String imagen = req.getParameter("imagen");
		
		Atraccion atraccion = servicioAtraccion.agregar(id,nombre, costo, tiempo, cupo, tipo, descripcion, imagen);
		
		
		if (atraccion.esValida()) {
			resp.sendRedirect("/tierraMedia/admin/atracciones/index.ad");
		} else {
			req.setAttribute("atraccion", atraccion);

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/views/admin/add/atraccion/index.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
