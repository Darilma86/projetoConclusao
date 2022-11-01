class Compra < ApplicationRecord
    has_many :vendas #, inverse_of: :compra, dependent: :destroy
    accepts_nested_attributes_for :vendas
    
  
end
