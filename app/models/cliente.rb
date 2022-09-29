class Cliente < ApplicationRecord

    has_many :vendas, inverse_of: :cliente, dependent: :destroy
    has_many :produtos, through: :vendas

    accepts_nested_attributes_for :vendas, :produtos, allow_destroy: true

end
