require "rails_helper"

describe Endereco do
    before(:each)  do
    @endereco = Endereco.create(:descricao => "Rua sem Saída")
  end
  
   it "Testando o modelo Endereco" do
   
    expect(@endereco.descricao).to eq("Rua sem Saída")
   
  end
  
end