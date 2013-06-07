package grailsarqsoft

class Materia {

	String 	nombre
	String	codigo
	static hasMany = [cursos: Curso]
	
    static constraints = {
		codigo blank: false, unique: true, size:5..5
		nombre blank: false, unique: true
    }
	
	String toString() {
		"${codigo} ${nombre}"
	}
}
