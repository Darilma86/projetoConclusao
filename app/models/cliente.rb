class Cliente < ApplicationRecord

    has_many :vendas, inverse_of: :cliente, dependent: :destroy
    has_many :produtos, through: :vendas

    accepts_nested_attributes_for :vendas, :produtos, allow_destroy: true


    validates :name, :celucar, :email, :cidade, presence: { message: 'deve ser preenchido'}
    validates :rg, presence: { message: 'deve ser preenchido'},
    length: {minimum: 10, maximum: 10, message: 'Deve conter 10 dígitos'}

    validates :cpf, presence: {message: 'deve ser preenchido'},
    length: {minimum: 14, maximum: 14}, uniqueness: {message: 'Esse cpf já está cadastrado'}

end
