class CreateSucursals < ActiveRecord::Migration[7.0]
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :borrado
      
      t.timestamps
    end
    add_index :sucursals, :nombre, unique: true
  end
end
