class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cedula, :string
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :telefono, :string
  end
end
