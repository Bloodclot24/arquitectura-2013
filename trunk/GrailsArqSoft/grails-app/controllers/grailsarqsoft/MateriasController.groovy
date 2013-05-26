package grailsarqsoft

class MateriasController {

	def scaffold = true
	
    def index = {
		redirect (action: list)
	}
	
	/*
	def listarMaterias = {
		def todasLasMaterias = Materias.list()
		[todasLasMaterias : todasLasMaterias]
	}*/
}
