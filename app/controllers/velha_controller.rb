class VelhaController < ApplicationController
  def index
    fala = params[:fala]
    return if fala.nil?
    @resposta = if fala == fala.upcase
                  "NÃO, NÃO DESDE #{1950 + rand(30)}"
                else
                   'QUE, FALA MAIS ALTO!'
                end
  end
end
