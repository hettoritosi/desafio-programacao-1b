=======
# Para executar a aplicação

 1 - Clone o repositório 
 
 2 - Instale as depedências  
 
      $ bundle install 
      
 3 - Crie o banco e migre o schema 
 
      $ rake db:create
      
      $ rake db:migrate

 Agora rode a aplicação
 
 $ rails server
 
 Obs: Caso queira executar os teste basta executar:
 
       $ bundle exec rspec