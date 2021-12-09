package model;

public class PromoAbsoluta extends Promocion {

	private double costo;
	
	public PromoAbsoluta(String nombre, Atraccion[]paquete,String tipo, double costo, String descripcion, String imagen) {
		super(nombre,paquete ,tipo,descripcion,imagen);
		this.costo = costo;
		super.setCosto(costo);
		if( costo < 0 ) {
			throw new Error("El costo no puede ser negativo");
		}
	}
	
	public PromoAbsoluta(String nombre, Atraccion[]paquete,String tipo, double costo,int id, String descripcion, String imagen) {
		super(nombre,paquete ,tipo,descripcion,imagen);
		super.setId(id);
		this.costo = costo;
		super.setCosto(costo);
		if( costo < 0 ) {
			throw new Error("El costo no puede ser negativo");
		}
	}
	
	@Override
	public double getCosto() {
		return this.costo;
	}

	@Override
	public void ocuparLugar() {
		for (Atraccion a : super.getItinerario()) {
			a.ocuparLugar();
		}
	}
	
	@Override
	public boolean tieneCupo() {
		return super.tieneCupo();
	}

	@Override
	public String toString() {
		return super.toString() + " Atracciones incluidas en la Promocion: " + super.getAtraccionesIncluidas() + "\n"+super.getDescripcion()+"\n"+super.getImagen();
	}
}
