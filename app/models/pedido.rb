class Pedido < ApplicationRecord
  validates :data, :descricao, :valor, presence: true
  validates :valor, numericality: { greater_than: 0 }

  def data_br
    data.strftime('%d/%m/%Y')
  end
end
