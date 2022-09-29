class Compra < ApplicationRecord
    has_many :vendas #, inverse_of: :compra, dependent: :destroy
end
