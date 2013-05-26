package grailsarqsoft

class CursosController {

    def index = { 
		redirect (action: listarCursos)
	}
	
	def listarCursos = {
		//listar todos los cursos
		def todasLosCursos = Cursos.list()
		[todasLosCursos : todasLosCursos]
	}
	
	def listarCursosMateria = {
		//listar todos los cursos de una materia
		
	}
	
	def detalleCurso = {
		
	}
}
