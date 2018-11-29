class CreatePedido < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :descricao
      t.float :valor
      t.boolean :tipo
    end
  end
end
