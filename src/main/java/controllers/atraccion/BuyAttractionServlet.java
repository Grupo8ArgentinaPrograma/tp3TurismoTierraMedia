 package controllers.atraccion;

import java.io.IOException;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import persistence.commons.DAOFactory;
import persistence.impl.UsuarioDAOImpl;
import services.BuyAttractionService;

@WebServlet("/atraccions/comprar.do")
public class BuyAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 3455721046062278592L;
	private BuyAttractionService buyAttractionService;
	private UsuarioDAOImpl usuario = (UsuarioDAOImpl) DAOFactory.getUsuarioDAO();

	@Override
	public void init() throws ServletException {
		super.init();
		this.buyAttractionService = new BuyAttractionService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Integer attractionId = Integer.parseInt(req.getParameter("id"));
		Usuario user =  usuario.encontrarPorNombre(req.getParameter("user"));
		System.out.println(user);
		System.out.println(req.getParameter("id"));
		System.out.println(user.getId());
		
		Map<String, String> errors = buyAttractionService.buy(user.getId(), attractionId);
		
		Usuario user2 = DAOFactory.getUsuarioDAO().encontrarPorId(user.getId());
	
		req.getSession().setAttribute("user", user2);
		
		if (errors.isEmpty()) {
			req.setAttribute("flash", "¡Gracias por comprar!");
		} else {
			req.setAttribute("errors", errors);
			req.setAttribute("flash", "No ha podido realizarse la compra");
		}

		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/confirmacioncompra.jsp");
		dispatcher.forward(req, resp);
	}
}
