class Aluno < ApplicationRecord
  validates :nome, :nota, presence: true
end
