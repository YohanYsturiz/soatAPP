class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.integer :id_ages
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
