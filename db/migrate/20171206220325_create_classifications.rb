class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.integer :id_classification
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
