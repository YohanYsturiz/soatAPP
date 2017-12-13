class CreateCoverages < ActiveRecord::Migration
  def change
    create_table :coverages do |t|
      t.integer :gasto_funerario
      t.integer :gasto_medico
      t.integer :inc_permanente
      t.string :gasto_transporte

      t.timestamps null: false
    end
  end
end
