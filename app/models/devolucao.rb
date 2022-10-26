class Devolucao < ApplicationRecord
    has_many :produto #, inverse_of: :compra, dependent: :destroy
    has_many :cliente #, inverse_of: :compra, dependent: :destroy
    
end
