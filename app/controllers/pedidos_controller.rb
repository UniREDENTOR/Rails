class PedidosController < ApplicationController
  def index
    @pedidos = Pedido.all
  end

  def new
    @pedido = Pedido.new(data: Date.today, valor: 0.0)
  end

  def create
    @pedido = Pedido.new(pedido_params)
    if @pedido.save
      redirect_to pedidos_path
    else
      render :new
    end
  end

  def destroy
    Pedido.find(params[:id]).destroy
    redirect_to pedidos_path
  end

  private

  def pedido_params
    params.require(:pedido).permit(:descricao, :valor, :data)
  end
end
