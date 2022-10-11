json.extract! movimentacao, :id, :data, :descricao, :valor, :tipo, :created_at, :updated_at
json.url movimentacao_url(movimentacao, format: :json)
