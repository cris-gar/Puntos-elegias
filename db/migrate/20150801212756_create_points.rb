class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :cantidad
      t.date :fecha
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
