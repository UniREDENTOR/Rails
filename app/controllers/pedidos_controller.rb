class PedidosController < ApplicationController
  before_action :set_pedido, only: %i[edit update destroy entregar]
  before_action :set_dia, only: %i[index new]

  def index
    @pedidos = Pedido.where(data: @dia)
  end

  def new
    @pedido = Pedido.new(data: @dia, valor: 0.0)
  end

  def create
    @pedido = Pedido.new(pedido_params)
    if @pedido.save
      redirect_to pedidos_path(dia: @pedido.data)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @pedido.update(pedido_params)
      redirect_to pedidos_path(dia: @pedido.data)
    else
      render :edit
    end
  end

  def entregar
    @pedido.entregar
    redirect_to pedidos_path(dia: @pedido.data)
  end

  def destroy
    @pedido.destroy
    redirect_to pedidos_path(dia: @pedido.data)
  end

  private

  def set_pedido
    @pedido = Pedido.find(params[:id])
  end

  def set_dia
    @dia =  if params[:dia].present?
              params[:dia].to_date
            else
              Date.today
            end
  end

  def pedido_params
    params.require(:pedido).permit(:descricao, :valor, :data)
  end
end
