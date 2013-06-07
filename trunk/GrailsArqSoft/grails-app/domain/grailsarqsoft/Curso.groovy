package grailsarqsoft

class Curso {

	String 	docentes
	String 	horarios
	int 	vacantes
	static belongsTo 	= [materia : Materia]
	static hasMany 		= [inscriptos: Inscripcion]
	
    static constraints = {
		docentes blank: false
		horarios ()
		vacantes ()
    }
	
	String toString() {
		"${docentes}"
	}
}
