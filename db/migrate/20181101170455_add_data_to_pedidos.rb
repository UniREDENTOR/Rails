class AddDataToPedidos < ActiveRecord::Migration[5.1]
  def change
    add_column :pedidos, :data, :date
    rename_column :pedidos, :tipo, :entregue
  end
end
