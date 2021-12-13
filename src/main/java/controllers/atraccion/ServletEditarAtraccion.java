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

@WebServlet("/admin/edit/atraccion/index.ad")
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
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		double costo = Double.parseDouble(req.getParameter("costo"));
		double tiempo = Double.parseDouble(req.getParameter("tiempo"));
		int cupo = Integer.parseInt(req.getParameter("cupo"));
		
		Atraccion atraccion = servicioAtraccion.actualizar(nombre, costo, tiempo, cupo);
		System.out.println(atraccion);
		if (atraccion.esValida()) {
			resp.sendRedirect("/tierraMedia/admin/atracciones/index.ad");
		} else {
			req.setAttribute("atraccion", atraccion);

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/views/admin/edit/atraccion/index.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
