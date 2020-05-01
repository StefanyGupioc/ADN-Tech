
#CLASE PRUEBA 
require 'test/unit'

require_relative '../models/Administrador/Administrador.rb'
require_relative '../factories/Factoria.rb'
require_relative '../factories/FactoriaTutor.rb'

class Testing < Test::Unit::TestCase
def test_cantidad_postulantes

t1 = FactoriaTutor.crearObjetoTutor("tutor","73177968", "Sarria", "Juan Alberto", "NN")
t2 = FactoriaTutor.crearObjetoTutor("tutor","73177964", "Gonsales", "Luis Mario", "NN")

alNacional1 = Factoria.crearObjetoAlumno("nacional","00000001", "Alzamora", "Fiorella", 20, "F", "SMP", 11)
alNacional2 = Factoria.crearObjetoAlumno("nacional","00000002", "Gorriti", "Priscila", 26, "F", "SMP", 10)
alNacional3 = Factoria.crearObjetoAlumno("nacional","00000003", "Brito", "Kimberling", 24, "F", "SJL", 15)

alParticular4 = Factoria.crearObjetoAlumno("particular","00000004", "Benavides", "Josue", 30, "M", 200, 1)
alParticular5 = Factoria.crearObjetoAlumno("particular","00000005", "Brito", "Michael", 26, "M", 400, 2)
alParticular6 = Factoria.crearObjetoAlumno("particular","00000008", "Hinostroza", "Juan", 24, "M", 500, 3)

ev1 = Evaluacion.new("ev1", 10)
ev2 = Evaluacion.new("ev2", 20)

ev1.registrarRespuestas("pregunta 1", "a")
ev1.registrarRespuestas("pregunta 2", "b")
ev1.registrarRespuestas("pregunta 3", "a")
ev1.registrarRespuestas("pregunta 4", "c")
ev1.registrarRespuestas("pregunta 5", "d")
ev1.registrarRespuestas("pregunta 6", "e")
ev1.registrarRespuestas("pregunta 7", "e")
ev1.registrarRespuestas("pregunta 8", "c")
ev1.registrarRespuestas("pregunta 9", "b")
ev1.registrarRespuestas("pregunta 10", "a")

ev2.registrarRespuestas("pregunta 1", "a")
ev2.registrarRespuestas("pregunta 2", "b")
ev2.registrarRespuestas("pregunta 3", "c")
ev2.registrarRespuestas("pregunta 4", "a")
ev2.registrarRespuestas("pregunta 5", "a")
ev2.registrarRespuestas("pregunta 6", "d")
ev2.registrarRespuestas("pregunta 7", "d")
ev2.registrarRespuestas("pregunta 8", "c")
ev2.registrarRespuestas("pregunta 9", "b")
ev2.registrarRespuestas("pregunta 10", "e")
ev2.registrarRespuestas("pregunta 11", "a")
ev2.registrarRespuestas("pregunta 12", "e")
ev2.registrarRespuestas("pregunta 13", "b")
ev2.registrarRespuestas("pregunta 14", "b")
ev2.registrarRespuestas("pregunta 15", "c")
ev2.registrarRespuestas("pregunta 16", "d")
ev2.registrarRespuestas("pregunta 17", "e")
ev2.registrarRespuestas("pregunta 18", "e")
ev2.registrarRespuestas("pregunta 19", "d")
ev2.registrarRespuestas("pregunta 20", "a")


postulante1 = Postulante.new("P1", alNacional1, t1, t2, ev1)
postulante2 = Postulante.new("P2", alNacional2, t1, t2, ev1)
postulante3 = Postulante.new("P3", alParticular4, t1, t2, ev2)
postulante4 = Postulante.new("P4", alParticular5, t1, t2, ev2)

postulante1.registrarRespuestasAleatorias
postulante2.registrarRespuestasAleatorias
postulante3.registrarRespuestasAleatorias
postulante4.registrarRespuestasAleatorias
postulante1.registrarRespuestasAleatorias

admin = Administrador.new(2)
admin.registrarPostulantes(postulante1)
admin.registrarPostulantes(postulante2)
admin.registrarPostulantes(postulante3)
admin.registrarPostulantes(postulante4)

lista = admin.postulantes
assert_equal 4, lista.size
end
end