class AddColumnCompradorIdToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :comprador_id, :integer
  end
end
