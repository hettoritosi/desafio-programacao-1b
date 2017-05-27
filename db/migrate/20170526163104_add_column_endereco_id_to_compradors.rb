class AddColumnEnderecoIdToCompradors < ActiveRecord::Migration
  def change
    add_column :compradors, :endereco_id, :integer
  end
end
