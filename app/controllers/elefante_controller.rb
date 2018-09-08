class ElefanteController < ApplicationController
  def index
    @frases = ["1 elefante incomoda muita gente"]
    numero = params[:numero].to_i
    (2..numero).each do |n|
      @frases <<  if n.even?
                     "#{n} elefantes #{'incomodam ' * n} muito mais"
                  else
                    "#{n} elefantes incomodam muita gente"
                  end
    end
  end
end
