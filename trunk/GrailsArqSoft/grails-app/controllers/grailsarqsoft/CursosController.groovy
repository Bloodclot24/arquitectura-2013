package grailsarqsoft

class CursosController {

    def index = { 
		redirect (action: listarCursos)
	}
	
	def listarCursos = {
		//listar todos los cursos
		def todosLosCursos = Cursos.list()
		[todosLosCursos : todosLosCursos]
	}
	
	def listarCursosMateria = {
		//listar todos los cursos de una materia
		
	}
	
	def detalleCurso = {
		
	}
}
