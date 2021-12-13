package controllers.session;

import java.io.IOException;

import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import model.ComparaTor;
import model.Promocion;
import model.Usuario;
import services.LoginService;
import services.ServicioAtraccion;
import services.ServicioPromocionMau;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 7426414066105522340L;
	private LoginService loginService;
	private ServicioAtraccion servicioAtracciom;
	private ServicioPromocionMau servicioPromocionMau;

	@Override
	public void init() throws ServletException {
		super.init();
		loginService = new LoginService();
		servicioAtracciom= new ServicioAtraccion();
		servicioPromocionMau= new ServicioPromocionMau();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

	
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		Usuario usuario = loginService.login(username, password);
		List<Atraccion> atracciones = servicioAtracciom.listar(); 
		List<Promocion>promociones = servicioPromocionMau.listar();
		atracciones.sort(new ComparaTor()); 
		promociones.sort(new ComparaTor()); 
		if (!usuario.isNull()) {
			req.getSession().setAttribute("usuario", usuario);
			if (usuario.getAdmin() == 0) {
				req.getSession().setAttribute("atracciones",atracciones);
				req.getSession().setAttribute("promociones",promociones);
				RequestDispatcher dispatcher = getServletContext()
						.getRequestDispatcher("/index.jsp");
				dispatcher.forward(req, resp);
			}else if (usuario.getAdmin() == 1) {
				RequestDispatcher dispatcher = getServletContext()
						.getRequestDispatcher("/views/admin/index.jsp");
				dispatcher.forward(req, resp);
			}	
			
		} else {
			req.setAttribute("flash", "Nombre de usuario o contraseña incorrectos");
			
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/login.jsp");
			dispatcher.forward(req, resp);

		}
		

	}
}
