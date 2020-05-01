require_relative './Persona.rb'
class Alumno < Persona
	attr_accessor :edad, :genero
	def initialize(dni, apellidos, nombres, edad, genero)
		super(dni, apellidos, nombres)
		@edad = edad
		@genero = genero
	end
	def calcularCS
		
	end
	def calcularRE
		
	end
end