class Venda < ApplicationRecord

    belongs_to :cliente
    belongs_to :produto
    belongs_to :compra


end
