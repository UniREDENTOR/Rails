class Pedido < ApplicationRecord
  validates :descricao, :valor, presence: true

  def tipo_formatado
    tipo ? 'Entrada' : 'Saída'
  end
end
