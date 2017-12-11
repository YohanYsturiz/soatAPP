class CreateTypeclassifications < ActiveRecord::Migration
  def change
    create_table :typeclassifications do |t|
      t.integer :id_type
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
