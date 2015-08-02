json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :fecha_inicio, :fecha_termino, :puntos_minimo, :jugadores_maximo
  json.url tournament_url(tournament, format: :json)
end
