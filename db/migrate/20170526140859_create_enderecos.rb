class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
