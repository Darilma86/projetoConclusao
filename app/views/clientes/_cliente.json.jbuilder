<<<<<<< HEAD
json.extract! cliente, :id, :nome, :endereco, :celucar, :rg, :sexo, :data_nasciemnto, :email, :cidade, :created_at, :updated_at
=======
json.extract! cliente, :id, :name, :rg, :cpf, :endereco, :celucar, :sexo, :data_nasciemnto, :email, :cidade, :created_at, :updated_at
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
json.url cliente_url(cliente, format: :json)
