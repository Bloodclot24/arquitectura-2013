package grailsarqsoft

class MateriasController {

    def index = {
		redirect (action: listarMaterias)
	}
	
	def listarMaterias = {
		def todasLasMaterias = Materias.list()
		[todasLasMaterias : todasLasMaterias]
	}
}
