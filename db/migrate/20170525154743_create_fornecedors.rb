class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
