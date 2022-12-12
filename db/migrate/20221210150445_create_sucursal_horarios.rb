class CreateSucursalHorarios < ActiveRecord::Migration[7.0]
  def change
    create_table :sucursal_horarios do |t|
      t.references :sucursal, null: false, foreign_key: true
      t.references :horario, null: false, foreign_key: true
      t.string :dia

      t.timestamps
    end
  end
end
