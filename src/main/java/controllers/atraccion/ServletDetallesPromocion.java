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
import model.Promocion;
import services.ServicioAtraccion;
import services.ServicioPromocionMau;

@WebServlet("/promo/index.do")
public class ServletDetallesPromocion extends HttpServlet implements Servlet {
	
	private static final long serialVersionUID = -3024831153119392589L;

	private ServicioPromocionMau servicioPromocionMau;
	

	@Override
	public void init() throws ServletException {
		super.init();
		
		this.servicioPromocionMau = new ServicioPromocionMau();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Promocion promocion = servicioPromocionMau.find(Integer.parseInt(req.getParameter("id")));
		
		
		
		req.setAttribute("atracciones", promocion);
		
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/PromoDetalles.jsp");
		dispatcher.forward(req, resp);

	}	
}
