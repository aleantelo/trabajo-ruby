class CreateTurns < ActiveRecord::Migration[7.0]
  def change
    create_table :turns do |t|
      t.date :fecha
      t.time :hora
      t.string :estado
      t.string :motivo
      
      t.timestamps
    end
  end
end
