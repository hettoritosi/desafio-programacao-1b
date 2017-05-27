require "rails_helper"

describe Comprador do
    before(:each)  do
    @comprador = Comprador.create(:nome => "Felipe")
  end
  
   it "Testando o modelo Comprador" do
   
    expect(@comprador.nome).to eq("Felipe")
   
  end
  
  
  
end