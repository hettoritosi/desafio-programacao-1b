class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]


  def index
    @pedidos = Pedido.all
    @receita_bruta = Pedido.includes(:produto).sum(:preco_unit)
  end

 
end
