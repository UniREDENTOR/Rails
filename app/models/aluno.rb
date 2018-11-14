class Aluno < ApplicationRecord
  validates :nome, :nota, presence:  { message: 'Campo Obrigatório' }
  validates :nota, numericality: { greater_than: -1,
                                   message: 'Deve Ser Positivo' }
end
