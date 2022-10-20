class Produto < ApplicationRecord

    has_many :vendas, inverse_of: :produto, dependent: :destroy
    has_many :clientes, through: :vendas

    validates :nome, :quantidade, :tipo, :numero, :preco_venda, :preco_compra, :descricao, presence: true

end
