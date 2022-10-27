json.extract! devolucao, :id, :cliente_id, :produto_id, :quantidade, :staus,:justificativa, :created_at, :updated_at
json.url devolucao_url(devolucao, format: :json)
