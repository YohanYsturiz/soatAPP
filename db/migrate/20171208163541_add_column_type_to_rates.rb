class AddColumnTypeToRates < ActiveRecord::Migration
  def change
    add_column :rates, :typeclassification_id, :integer
  end
end
