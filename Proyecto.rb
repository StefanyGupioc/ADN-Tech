class Persona
	attr_accessor :dni, :apellidos, :nombres
	def initialize(dni, apellidos, nombres)
		@dni = dni
		@apellidos = apellidos
		@nombres = nombres
end

class Tutor < Persona
	attr_accessor :parentesco
	def initialize(dni, apellidos, nombres, parentesco)
		super(dni, apellidos, nombres)
		@parentesco = parentesco
	end
end

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
