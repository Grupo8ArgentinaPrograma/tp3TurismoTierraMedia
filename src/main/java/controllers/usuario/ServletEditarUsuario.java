package controllers.usuario;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import services.ServicioUsuario;

@WebServlet("/admin/edit/usuario/index.ad")
public class ServletEditarUsuario extends HttpServlet implements Servlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8653128287405525058L;
	private ServicioUsuario servicioUsuario;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioUsuario = new ServicioUsuario();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Usuario> usuarios = servicioUsuario.listar();
		req.setAttribute("usuarios", usuarios);
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/admin/edit/usuario/index.jsp");
		dispatcher.forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		double dineroDisponible = Double.parseDouble(req.getParameter("dineroDisponible"));
		double tiempoDisponible = Double.parseDouble(req.getParameter("tiempoDisponible"));
		String password = req.getParameter("password");
		
		Usuario usuario = servicioUsuario.actualizar(nombre, dineroDisponible, tiempoDisponible, password);

		if (usuario.esValido()) {
			resp.sendRedirect("/tierraMedia/admin/usuarios/index.ad");
		} else {
			req.setAttribute("usuario", usuario);

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/views/admin/edit/usuario/index.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
