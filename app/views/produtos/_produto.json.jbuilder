json.extract! produto, :id, :nome, :tipo, :descricao, :numero, :preco_compra, :preco_venda, :created_at, :updated_at
json.extract! produto, :id, :nome, :quantidade, :tipo, :descricao, :numero, :preco_compra, :preco_venda, :created_at, :updated_at
json.url produto_url(produto, format: :json)
