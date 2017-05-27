class AddColumnFornecedorIdToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :fornecedor_id, :integer
  end
end
