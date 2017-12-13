class AddColumnToCoches < ActiveRecord::Migration
  def change
    add_column :coches, :tipo_documento, :string
    add_column :coches, :numero_documento, :integer
    add_column :coches, :nombre_tomador, :string
    add_column :coches, :apellido_tomador, :string
    add_column :coches, :email_tomador, :string
    add_column :coches, :telefono_tomador, :integer
    add_column :coches, :pago_poliza, :string
  end
end
