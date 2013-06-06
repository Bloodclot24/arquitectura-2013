package grailsarqsoft

class InscripcionController {

   	//def scaffold = true
	static scaffold = Inscripcion
	
    def index = { 
		redirect (action: list)
	}
	
	String toString() {
		"Inscripciones"
	}
	
	def create = {
		if(!session.user) {
			redirect(controller:"Alumno", action:"login")
			return false
		}
		else {
			[inscripcionInstance: new Inscripcion(alumno: session.user)]
		}
	}
}
