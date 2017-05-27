require "rails_helper"

describe Produto do
    before(:each)  do
    @produto = Produto.create(:descricao => "Cadeira", :preco_unit => 200.10)
  end
  
   it "Testando o modelo Produto" do
   
    expect(@produto.descricao).to eq("Cadeira")
    expect(@produto.preco_unit).to eq(200.10)
   
  end
  
end