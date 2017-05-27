class Pedido < ActiveRecord::Base
    belongs_to :produto
    belongs_to :comprador
end
