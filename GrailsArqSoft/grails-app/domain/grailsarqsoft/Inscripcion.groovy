package grailsarqsoft

class Inscripcion {

	static belongsTo = [alumno: Alumno, curso: Curso]
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		"${alumno} - ${curso.materia} - ${curso}"
	}

}
