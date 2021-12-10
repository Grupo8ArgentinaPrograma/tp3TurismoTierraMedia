package controllers.usuario;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import services.ServicioUsuario;


@WebServlet("/admin/add/usuario/index.do")
public class ServletAgregarUsuario extends HttpServlet implements Servlet {

	private static final long serialVersionUID = 6935249543754728779L;
	private ServicioUsuario servicioUsuario;

	@Override
	public void init() throws ServletException {
		super.init();
		this.servicioUsuario = new ServicioUsuario();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//buscar tipos de atraccion
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/add/usuario/index.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		int dineroDisponible = Integer.parseInt(req.getParameter("dineroDisponible"));
		double tiempoDisponible = Double.parseDouble(req.getParameter("tiempoDisponible"));
		String tipo = req.getParameter("tipo");
		int id = Integer.parseInt(req.getParameter("id"));
		String password = req.getParameter("password");
		int admin = Integer.parseInt(req.getParameter("admin"));
		Usuario usuario = ServicioUsuario.agregar(nombre, dineroDisponible, tiempoDisponible, tipo, id, password, admin);
		resp.sendRedirect("/tierraMedia/admin/usuarios/index.do");
	}
}
