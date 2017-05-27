class Comprador < ActiveRecord::Base
    has_many :pedidos
    belongs_to :endereco
end
