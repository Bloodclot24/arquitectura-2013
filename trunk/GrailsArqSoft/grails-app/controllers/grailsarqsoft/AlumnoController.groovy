package grailsarqsoft

class AlumnoController {

	def scaffold = true
	
    def index = { 
		redirect (action: list, params:  params)
	}
	
	String toString() {
		"Alumnos"
	}
	
	def login = {}
	
	def authenticate = {
		def user = Alumno.findByPadronAndPassword(params.padron, params.password)	//este metodo es dinamico
		if(user){
			session.user = user
			flash.message = "Bienvenido ${user.nombre} + ${user.apellido}!"
			redirect(action:"login")
			
		}else{
			flash.message = "Lo sentimos, ${params.padron}. Intenta nuevamente."
			redirect(action:"login")
		}
	}
	
	def logout = {
		flash.message = "Adios ${session.user.nombre} + ${session.user.apellido}"
		session.user = null
		redirect(action:"login")
	}
}
