package grailsarqsoft

class Materias {

	String 	nombre
	String	codigo
	static hasMany = [cursos: Cursos]
	
    static constraints = {
		codigo()
		nombre()
    }
	
	String toString() {
		"${codigo} - ${nombre}"
	}
}
