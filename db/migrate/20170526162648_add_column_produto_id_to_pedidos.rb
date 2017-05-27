class AddColumnProdutoIdToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :produto_id, :integer
  end
end
