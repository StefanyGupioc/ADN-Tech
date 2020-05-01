class PagoServicio
  attr_accessor :habitacionID, :personaID, :servicioID, :periodo, :valor
  def initialize(habitacionID, personaID, servicioID, periodo,valor)
    @habitacionID = habitacionID
    @personaID = personaID
    @servicioID = servicioID
    @periodo = periodo
    @valor = valor
  end
  def muestraDatos
    "Codigo de habitacion: #{habitacionID} - Codigo de persona: #{personaID} - Codigo de servicio: #{servicioID} - Periodo: #{periodo} - valor: #{valor} "
  end
end
