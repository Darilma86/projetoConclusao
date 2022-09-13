json.extract! cliente, :id, :name, :rg, :cpf, :endereco, :celucar, :sexo, :data_nasciemnto, :email, :cidade, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
