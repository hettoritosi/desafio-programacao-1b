class Produto < ActiveRecord::Base
   belongs_to :fornecedor
   has_many :pedidos
end
