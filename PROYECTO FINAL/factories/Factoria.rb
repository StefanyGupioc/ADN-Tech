class Factoria

	def self.crearObjetoAlumno(tipo, *arg)
		case tipo
		when 'nacional'
			return Nacional.new(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6])
		when 'particular'
			return Particular.new(arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6])
		end
	end


end
