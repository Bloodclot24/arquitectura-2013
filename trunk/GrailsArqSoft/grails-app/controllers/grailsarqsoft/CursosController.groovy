package grailsarqsoft

class CursosController {

	def scaffold = true
	
    def index = { 
		redirect (action: list)
	}
	
	/*
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
	*/
}
