package com.educacionit.entidades;

import java.util.concurrent.atomic.AtomicLong;

public class Usuario {
	//Atributos
	private Long id;
	private String correo;
	private String clave;
	//incrementador que se inicia en 1
	private static AtomicLong contador = new AtomicLong();
	
	//constructor por defecto, que aparte de generar el objeto, setea el id de cada instancia el numero
	//siguiente de contador
	public Usuario() {
		//el id autoincrementado tambien lo tengo que tener en el constructor por defecto
		id = contador.getAndIncrement();
		
	}

	//Constructor con todos los campos menos el id(xq queremos que lo autoincremente)
	//me crea el objeto y le asigna valores
	public Usuario(String correo, String clave) {
		super();
		//hacemos que el id se incremente en una unidad
		id = contador.getAndIncrement();
		this.correo = correo;
		this.clave = clave;
	}
	
	//toString, para mostrar los objetos cuando se invocan los objetos
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", correo=" + correo + ", clave=" + clave + "]";
	}

	//los Getters y Setters siempre se hacen por conveccion.Porque si trabajo con algún 
	//Framework, este no va a saber donde guardar u obtener los valores
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	
	
	
	

}
