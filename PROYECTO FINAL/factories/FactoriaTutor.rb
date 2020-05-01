class FactoriaTutor
	def self.crearObjetoTutor(tipo, *arg)
		case tipo
		when 'tutor'
			return Tutor.new(arg[0], arg[1], arg[2], arg[3])
		end
	end
end