require_relative '../Alumno.rb'
require_relative '../Persona.rb'
class Nacional < Alumno
	attr_accessor :zona, :promedio
	def initialize(dni, apellidos, nombres, edad, genero, zona, promedio)
		super(dni, apellidos, nombres, edad, genero)
		@zona = zona
		@promedio = promedio
	end
	def calcularCS
		puntaje = 0
		if zona == "Rural"
			puntaje = 100
		elsif zona == "Urbano"
			puntaje = 80
		end	
		return puntaje			
	end
end