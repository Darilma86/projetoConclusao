class Produto < ApplicationRecord

    has_many :vendas, inverse_of: :produto, dependent: :destroy
    has_many :clientes, through: :vendas


    has_many :produtos, through: :devolucaos


    validates :nome, :quantidade, :tipo, :tamanho, :preco_venda, :preco_compra, :descricao, presence: true



    def nome_precodevenda
        "#{nome.upcase + " ----- Preço Sugerido: " + preco_venda.to_s }"
    end
    

end
