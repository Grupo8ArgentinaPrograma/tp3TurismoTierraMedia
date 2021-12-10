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
import model.Usuario;
import services.LoginService;
import services.ServicioAtraccion;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 7426414066105522340L;
	private LoginService loginService;
	private ServicioAtraccion servicioAtracciom;

	@Override
	public void init() throws ServletException {
		super.init();
		loginService = new LoginService();
		servicioAtracciom= new ServicioAtraccion();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

	
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		Usuario usuario = loginService.login(username, password);
		List<Atraccion> atracciones = servicioAtracciom.listar(); 
		atracciones.sort(new ComparaTor()); 
		
		if (!usuario.isNull()) {
			
			req.getSession().setAttribute("usuario", usuario);
			req.getSession().setAttribute("atracciones",atracciones);
			
			
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);

			
			
		} else {
			req.setAttribute("flash", "Nombre de usuario o contraseña incorrectos");
			
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/login.jsp");
			dispatcher.forward(req, resp);

		}
		

	}
}
