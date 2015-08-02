class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.integer :puntos_minimo
      t.integer :jugadores_maximo

      t.timestamps null: false
    end
  end
end
