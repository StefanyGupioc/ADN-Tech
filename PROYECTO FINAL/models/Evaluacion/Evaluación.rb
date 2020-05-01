
class Evaluacion
	attr_accessor :codigo, :cantidadPrg, :arrayRespuestas, :arrayAlternativas
	def initialize(codigo, cantidadPrg)
		if cantidadPrg == 10 or cantidadPrg == 20
			@codigo = codigo
			@cantidadPrg = cantidadPrg
			@arrayRespuestas = Array.new()
			@arrayAlternativas = Array.new()
		end
	end
	def registrarRespuestas(pregunta, alternativa)
		numero = arrayRespuestas.count + 1
		respuesta = [numero,pregunta,alternativa]
		if arrayRespuestas == nil or arrayRespuestas.count < cantidadPrg
			arrayRespuestas.push(respuesta)
			arrayAlternativas.push(alternativa)
		else
			"Solo puede registrar un máximo de #{cantidadPrg} preguntas"
		end
	end
end