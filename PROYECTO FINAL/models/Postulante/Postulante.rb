
class Postulante
	attr_accessor :codigo, :alumno, :tutor1, :tutor2, :evaluacion, :arrayRespuestasPostulante
	def initialize(codigo, alumno, tutor1, tutor2, evaluacion)
		@codigo = codigo
		@alumno = alumno
		@tutor1 = tutor1
		@tutor2 = tutor2
		@evaluacion = evaluacion
		@arrayRespuestasPostulante = Array.new()
	end
	def letraRandom
		arrayLetras = ["a","b","c","d","e"]
		rnd = rand%100
		letra = nil
		if rnd <= 0.1
			letra = ""
		elsif rnd > 0.1
			letra = arrayLetras[rand(5)]
		end
		return letra
	end
	def registrarRespuestasAleatorias
		valor = evaluacion.cantidadPrg
		arrayRespuestasPostulante.clear
		for p in 0...valor
			arrayRespuestasPostulante.push(letraRandom)
		end
	end
	def compararRespuestas
		valor = evaluacion.cantidadPrg
		respuestasCorrectas = evaluacion.arrayAlternativas
		respuestasAlumno = arrayRespuestasPostulante
		contadorVacio = 0
		correctos = 0
		incorrectos = 0

		for i in 0...valor
			if respuestasAlumno[i] == "" 
				contadorVacio += 1
			else 
				if respuestasCorrectas[i] == respuestasAlumno[i]
					correctos += 1
				else
					incorrectos += 1
				end
			end
		end
		return contadorVacio, correctos, incorrectos		
	end
	def calcularEC
		if evaluacion.cantidadPrg == 10
			return compararRespuestas[1]*10 + compararRespuestas[2]*5
		elsif evaluacion.cantidadPrg == 20
			return compararRespuestas[1]*5 + compararRespuestas[2]*2.5			
		end
	end
	def calcularPuntajeFinal
		0.2*alumno.calcularCS + 0.3*alumno.calcularRE + 0.5*calcularEC
	end
end