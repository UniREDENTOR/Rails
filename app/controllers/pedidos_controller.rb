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

  def edit
    @pedido = Pedido.find(params[:id])
  end

  def update
    @pedido = Pedido.find(params[:id])
    if @pedido.update(pedido_params)
      redirect_to pedidos_path
    else
      render :edit
    end
  end

  def entregar
    Pedido.find(params[:id]).entregar
    redirect_to pedidos_path
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
