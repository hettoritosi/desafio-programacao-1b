require "rails_helper"

describe Pedido do
    before(:each)  do
    @pedido = Pedido.create(:quantidade => 10)
  end
  
   it "Testando o modelo Pedido" do
    
    expect(@pedido.quantidade).to eq(10)
   
  end
  
end