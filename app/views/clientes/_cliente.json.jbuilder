json.extract! cliente, :id, :nome, :endereco, :celucar, :rg, :sexo, :data_nasciemnto, :email, :cidade, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
