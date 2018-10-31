class Pedido < ApplicationRecord
  validates :descricao, presence: true
end
