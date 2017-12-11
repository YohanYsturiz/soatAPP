class CreateCoches < ActiveRecord::Migration
  def change
    create_table :coches do |t|
      t.string :placa
      t.string :clase
      t.integer :subtipo
      t.integer :edad
      t.integer :numero_pasajero
      t.integer :cilindraje
      t.integer :toneladas
      t.string :propietario
      t.string :poliza
      t.references :users, index: true, foreign_key: true, index:true

      t.timestamps null: false
    end
  end
end
