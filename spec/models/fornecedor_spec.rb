require "rails_helper"

describe Fornecedor do
    before(:each)  do
    @fornecedor = Fornecedor.create(:nome => "João Pereira")
  end
  
   it "Testando o modelo Fornecedor" do
   
    expect(@fornecedor.nome).to eq("João Pereira")
   
  end
  
end