class CreateSubclassifications < ActiveRecord::Migration
  def change
    create_table :subclassifications do |t|
      t.integer :id_subclassifications
      t.string :descripcion
      t.references :classification, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
