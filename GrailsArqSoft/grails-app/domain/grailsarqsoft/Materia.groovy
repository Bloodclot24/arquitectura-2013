package grailsarqsoft

class Materia {

	String 	nombre
	String	codigo
	static hasMany = [cursos: Curso]
	
    static constraints = {
		codigo()
		nombre()
    }
	
	String toString() {
		"${codigo} - ${nombre}"
	}
}
