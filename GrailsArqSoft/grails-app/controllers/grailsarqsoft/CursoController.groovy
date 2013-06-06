package grailsarqsoft

class CursoController {

	def scaffold = true
	
    def index = { 
		redirect (action: list)
	}
	
	String toString() {
		"Cursos"
	}
	
}
