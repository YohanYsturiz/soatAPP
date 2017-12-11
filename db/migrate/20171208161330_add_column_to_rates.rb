class AddColumnToRates < ActiveRecord::Migration
  def change
    add_column :rates, :classification_id, :integer
  end
end
