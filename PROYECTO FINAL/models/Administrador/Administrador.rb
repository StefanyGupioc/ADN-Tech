class Administrador
	attr_accessor :cantidadVacantes, :arrayPostulantes
	def initialize(cantidadVacantes)
		@cantidadVacantes = cantidadVacantes
 		@arrayPostulantes = Array.new()
	end
	def calcularEstado(dniAlumno)

		
	end
	def validarDNI(dni)
		if arrayPostulantes != nil
			for validar in arrayPostulantes
				if validar.alumno.dni == dni
					return true
				end
			end
		end
		return false
	end
	def registrarPostulantes(postulante)
		if !validarDNI(postulante.alumno.dni)
	 	arrayPostulantes.push(postulante)
		end
	end
	def listarPostulante(dni)
		if arrayPostulantes != nil
			for validar in arrayPostulantes
				if validar.alumno.dni == dni or validar.tutor1.dni == dni or validar.tutor2.dni == dni
					return validar
				end
			end
			return "No existe"
		end
		return false
	end
	def postulantes
		return @lista_postulantes
	end
	def obtenerCantidadPostulantes
		suma = 0
		for i in @lista_postulantes
			suma += @lista_postulantes.size
		end
		return suma
	end		
end