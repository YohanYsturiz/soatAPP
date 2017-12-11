class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :id_rates
      t.integer :id_classifications
      t.integer :id_subclassification
      t.integer :id_age
      t.float :tasa_comercial
      t.float :value_prima
      t.float :contribucion
      t.float :subtotal
      t.float :runt
      t.float :total

      t.timestamps null: false
    end
  end
end
