package grailsarqsoft

class Cursos {

	String 	docentes
	String 	horarios
	int 	vacantes
	static belongsTo = [materia : Materias]
	
    static constraints = {
		vacantes()
		docentes()
		horarios()
    }
	
	String toString() {
		"${docentes}"
	}
}
