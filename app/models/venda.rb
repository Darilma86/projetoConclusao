class Venda < ApplicationRecord

    belongs_to :cliente
    belongs_to :produto
    belongs_to :compra
    belongs_to :devolucao

end
