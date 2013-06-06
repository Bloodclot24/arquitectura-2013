package grailsarqsoft

class Alumno {

	String 	nombre
	String 	apellido
	String  password
	int		padron
	
	static hasMany = [inscripciones: Inscripcion]
	
    static constraints = {
		padron blank: false, unique: true, minSize: 5, editable: false
		nombre blank: false
		apellido blank: false
		password password: true
    }
	
	@Override
	public String toString() {
		"${padron} - ${nombre} ${apellido}";
	}
}
