class ImportFilesController < ApplicationController

require 'base64'
require 'csv'

  def new
   @import_file = ImportFile.new
  end

  def create
    
    # Processo de ETL para carregar os dados para o banco de dados relacional
    
    @import_file = ImportFile.new(import_file_params)
    
      uploaded_file = @import_file.attachment
      file_content = uploaded_file.path
      
    if !file_content.blank?
      
      File.open(file_content) do |f|
        CSV.foreach(f,:headers => true, col_sep:"\t") do |row|
          
          #Carregando a tabela Fornecedors    	         
          Fornecedor.where(nome: row['Fornecedor'])
                    .first_or_create(nome: row['Fornecedor'] )
          
          #Carregando a tabela Enderecos    
          Endereco.where(descricao: row['Endereço'])
                  .first_or_create(descricao: row['Endereço'] )
          
              
          endereco = Endereco.where("descricao = ?", row['Endereço']).first
          
          #Carregando a tabela Compradors    	         
          Comprador.where(nome: row[0],
                          endereco_id: endereco.id)
                          .first_or_create(nome: row[0],
                          endereco_id: endereco.id)
              
          fornecedor = Fornecedor.where("nome = ?", row['Fornecedor']).first
                          
          #Carregando a tabela Produtos                 
          Produto.where(descricao: row['descrição'],
                        fornecedor_id: fornecedor.id,
                        preco_unit: row['Preço Uniário'])
                        .first_or_create(descricao: row['descrição'],
                        fornecedor_id: fornecedor.id,
                        preco_unit: row['Preço Uniário'])
              
          produto = Produto.where("descricao = ?", row['descrição'] )
                           .where("preco_unit = ?", row['Preço Uniário']).first
              
          comprador = Comprador.where("nome = ?", row[0])
          	                   .where("endereco_id = ?", endereco.id).first
          
          #Carregando a tabela Pedidos    
          Pedido.create ({:quantidade => row['Quantidade'],
              	          :produto_id => produto.id,
              	          :comprador_id => comprador.id} )
              
             
          end
      end
    end      
    if @import_file.save
      redirect_to pedidos_path, notice:  "Arquivo Importado com Sucesso"
    else 
       render "new"
    end
    
  end


private

   def import_file_params
      params.fetch(:import_file, {}).permit(:attachment)
   end
   
    
end
       
   