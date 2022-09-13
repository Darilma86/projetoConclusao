<<<<<<< HEAD
json.extract! produto, :id, :nome, :tipo, :descricao, :numero, :preco_compra, :preco_venda, :created_at, :updated_at
=======
json.extract! produto, :id, :nome, :quantidade, :tipo, :descricao, :numero, :preco_compra, :preco_venda, :created_at, :updated_at
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
json.url produto_url(produto, format: :json)
