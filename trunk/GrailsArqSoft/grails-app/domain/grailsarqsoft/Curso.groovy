package grailsarqsoft

class Curso {

	String 	docentes
	String 	horarios
	int 	vacantes
	static belongsTo = [materia : Materia]
	
    static constraints = {
		vacantes()
		docentes()
		horarios()
    }
	
	String toString() {
		"${docentes}"
	}
}
