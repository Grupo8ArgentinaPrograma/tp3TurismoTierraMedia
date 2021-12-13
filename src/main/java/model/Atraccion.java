package model;

import java.util.HashMap;
import java.util.Map;

public class Atraccion extends Ofertable {
	private int cupo;
	
	private Map<String, String> errores;

	public Atraccion(String nombre, double costo, double tiempo, int cupo, String tipo) {
		super(nombre, tipo, costo, tiempo);
		this.cupo = cupo;
		if (cupo < 0) {
			throw new Error("Los valores ingresados no puede ser negativo");
		}
	}
	public Atraccion(int id,String nombre, double costo, double tiempo, int cupo, String tipo,String descripcion,String imagen) {
		super(id,nombre, tipo, costo, tiempo,descripcion,imagen);
		this.cupo = cupo;
		if (cupo < 0) {
			throw new Error("Los valores ingresados no puede ser negativo");
		}
	}
	
	@Override
	public boolean tieneCupo() {
		return cupo > 0;
	}

	public int getCupo() {
		return this.cupo;
	}

	@Override
	public void ocuparLugar() {
		this.cupo--;
		if (getCupo() < 0) {
			throw new Error("No hay mas cupo");
		}	
	}

	public double getCosto() {
		return super.getCosto();
	}
	
	public Map<String, String> getErrores() {
		return errores;
	}
	
	public boolean esValida() {
		validar();
		return errores.isEmpty();
	}
	
	public void validar() {
		errores = new HashMap<String, String>();

		if (super.getCosto() <= 0) {
			errores.put("costo", "Debe ser positivo");
		}
		if (super.getTiempo() <= 0) {
			errores.put("tiempo", "Debe ser positivo");
		}
		if (this.cupo <= 0) {
			errores.put("cupo", "Debe ser positivo");
		}
	}
	
	@Override
	public String toString() {
		return super.toString();
	}

	public void setCupo(int cupo) {
		this.cupo = cupo;
	}
}