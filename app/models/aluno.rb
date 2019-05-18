class Aluno < ApplicationRecord
  validates_presence_of :nome, :nota
end
