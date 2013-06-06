package grailsarqsoft

class Curso {

	String 	docentes
	String 	horarios
	int 	vacantes
	static belongsTo 	= [materia : Materia]
	static hasMany 		= [inscriptos: Inscripcion]
	
    static constraints = {
		vacantes ()
		docentes blank: false
		horarios ()
    }
	
	String toString() {
		"${docentes}"
	}
}
