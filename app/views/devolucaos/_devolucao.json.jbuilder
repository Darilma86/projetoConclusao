json.extract! devolucao, :id, :cliente, :produto, :justificativa, :created_at, :updated_at
json.url devolucao_url(devolucao, format: :json)
