class Produto < ApplicationRecord

    has_many :vendas, inverse_of: :produto, dependent: :destroy
    has_many :clientes, through: :vendas

end
