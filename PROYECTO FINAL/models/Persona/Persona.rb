class Persona
	attr_accessor :dni, :apellidos, :nombres
	def initialize(dni, apellidos, nombres)
		@dni = dni
		@apellidos = apellidos
		@nombres = nombres
	end	
end