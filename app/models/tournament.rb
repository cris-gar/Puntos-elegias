class Tournament < ActiveRecord::Base

  validates :jugadores_maximo, :puntos_minimo, :fecha_inicio, :fecha_termino, presence: true
  validates :puntos_minimo, :jugadores_maximo, numericality: { only_integer: true }

end
