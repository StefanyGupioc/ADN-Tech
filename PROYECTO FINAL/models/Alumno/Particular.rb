
class Particular < Alumno
	attr_accessor :pension, :puesto
	def initialize(dni, apellidos, nombres, edad, genero, pension, puesto)
		super(dni, apellidos, nombres, edad, genero)
		@pension = pension
		@puesto = puesto
	end
	def calcularCS
		puntaje = 0
		if pension <= 200
			puntaje = 90
		elsif pension > 200 and pension <= 400
			puntaje = 70
		elsif pension > 400 and pension <= 600
			puntaje = 50
		elsif pension > 600
			puntaje = 40
		end	
		return puntaje	
	end
end