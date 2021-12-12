package controllers.promocion;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Promocion;
import services.ServicioPromocion;


@WebServlet("/admin/promociones/index.ad")
public class ServletPromocion extends HttpServlet implements Servlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7644311057966656439L;
	private ServicioPromocion servicioPromocion;

	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioPromocion = new ServicioPromocion();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Promocion> promociones = servicioPromocion.listar();
		req.setAttribute("promociones", promociones);
		RequestDispatcher dispatcher = getServletContext()

				.getRequestDispatcher("/views/admin/promociones/index.jsp");

		dispatcher.forward(req, resp);

	}
}
