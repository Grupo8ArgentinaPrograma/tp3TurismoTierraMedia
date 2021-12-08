package controllers.session;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import services.LoginService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 7426414066105522340L;
	private LoginService loginService;

	@Override
	public void init() throws ServletException {
		super.init();
		loginService = new LoginService();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

	
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		Usuario usuario = loginService.login(username, password);
			
		System.out.println("LoginServlet");
		System.out.println(usuario.getNombre());
		System.out.println(usuario.getTiempoDisponible());
		System.out.println(usuario.getTipoPreferido());
		System.out.println(usuario.getDineroDisponible());
		
		
		
		// redirigir según la respuesta
		if (!usuario.isNull()) {
			
			req.getSession().setAttribute("usuario", usuario);
			resp.sendRedirect("index.jsp");
			
		} else {
			req.setAttribute("flash", "Nombre de usuario o contraseña incorrectos");
			
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/login.jsp");
			dispatcher.forward(req, resp);

		}
		

	}
}