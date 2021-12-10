package model;

import java.util.ArrayList;


//import utils.Crypt;

public class Usuario {

	private int id;
	private String nombre;
	private double dineroDisponible;
	private double tiempoDisponible;
	private String tipoPreferido;
	private String password;
	private int admin;

	private ArrayList<Ofertable> productosComprados;

	public Usuario(String nombre, int presupuesto, double tiempoDisponible, String tipoPreferido, String password,
			int admin) {

		if (presupuesto < 0 || tiempoDisponible < 0) {
			throw new Error("Los valores ingresados no puede ser negativo");
		}

		this.nombre = nombre;
		this.dineroDisponible = presupuesto;
		this.tiempoDisponible = tiempoDisponible;
		this.tipoPreferido = tipoPreferido;
		this.productosComprados = new ArrayList<Ofertable>();
		this.password = password;
		this.admin = admin;
	}
	
	public Usuario(String nombre, int presupuesto, double tiempoDisponible, String tipoPreferido,int id, String password, int admin) {
		this(nombre,presupuesto,tiempoDisponible,tipoPreferido, password, admin);
		this.setId(id);
	}
	
	public Usuario(String nombre, int presupuesto, double tiempoDisponible, String tipoPreferido,int id,ArrayList<Ofertable> productosComprados, String password, int admin) {
		this(nombre,presupuesto,tiempoDisponible,tipoPreferido,id, password, admin);
		this.setProductosComprados(productosComprados);	
	}

	public void gastarDinero(double gasto) {
		if (getDineroDisponible() < gasto) {
			throw new Error("Dinero insuficiente");
		}
		this.dineroDisponible -= gasto;
	}

	public void restarTiempo(double tiempoUsado) {

		if (getTiempoDisponible() < tiempoUsado) {
			throw new Error("Tiempo insuficiente");
		}
		this.tiempoDisponible -= tiempoUsado;
	}

	public void comprarProducto(Ofertable producto) {

		this.productosComprados.add(producto);
		this.gastarDinero(producto.getCosto());
		this.restarTiempo(producto.getTiempoRecorrido());
		producto.ocuparLugar();
	}

	public boolean atraccionIncluidaEnPromocionComprada(Ofertable atraccion) {
		boolean valor = false;
		for (Ofertable producto : productosComprados) {
			if (producto instanceof Promocion) {
				for (Ofertable prodInterno : ((Promocion) producto).getItinerario()) {
					valor = prodInterno.equals(atraccion) || valor;
				}
			}
		}
		return valor;
	}

	public boolean estaAtraccionMegusta(Ofertable producto) {
		return this.tipoPreferido.equals(producto.getTipo());
	}
	
	public boolean checkPassword(String password) {
		
		return this.password.equals(password);
	}

	public boolean isNull() {
		return false;
	}
	
	public ArrayList<Ofertable> getproductosComprados() {
		return this.productosComprados;
	}

	public double getTiempoDisponible() {

		return this.tiempoDisponible;
	}

	public String getTipoPreferido() {
		return this.tipoPreferido;
	}

	public double getDineroDisponible() {
		return this.dineroDisponible;
	}

	public String getNombre() {
		return this.nombre;
	}
	
	public int getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public int getAdmin() {
		return admin;
	}

	public ArrayList<Ofertable> getProductosComprados() {
		return productosComprados;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setProductosComprados(ArrayList<Ofertable> productosComprados) {
		this.productosComprados = new ArrayList<Ofertable>();
		this.productosComprados = productosComprados;
	}

	protected void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setDineroDisponible(double dineroDisponible) {
		this.dineroDisponible = dineroDisponible;
	}

	public void setTiempoDisponible(double tiempoDisponible) {
		this.tiempoDisponible = tiempoDisponible;
	}

	protected void setTipoPreferido(String tipoPreferido) {
		this.tipoPreferido = tipoPreferido;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	protected void setAdmin(int admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", dineroDisponible=" + dineroDisponible
				+ ", tiempoDisponible=" + tiempoDisponible + ", tipoPreferido=" + tipoPreferido + ", admin=" + admin
				+ "]";
	}



}
