require './persona.rb'

class Tutor < Persona
	attr_accessor :parentesco
	def initialize(dni, apellidos, nombres, parentesco)
		super(dni, apellidos, nombres)
		@parentesco = parentesco
	end
end