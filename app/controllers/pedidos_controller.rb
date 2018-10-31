class PedidosController < ApplicationController
  def new
    @pedido = Pedido.new
  end

  def create
    @pedido = Pedido.new(pedido_params)
    if @pedido.save
      redirect_to pedidos_path
    else
      render :new
    end
  end

  private

  def pedido_params
    params.require(:pedido).permit(:descricao, :valor, :tipo)
  end
end
