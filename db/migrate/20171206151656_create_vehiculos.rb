class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :placa
      t.string :clase
      t.integer :subtipo
      t.integer :edad
      t.integer :numero_pasajero
      t.integer :cilindraje
      t.integer :toneladas
      t.string :propietario
      t.string :poliza

      t.timestamps null: false
    end
  end
end
