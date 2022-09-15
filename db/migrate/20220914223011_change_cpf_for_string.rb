class ChangeCpfForString < ActiveRecord::Migration[5.0]
  def change
    change_column :clientes, :cpf, :string
  end
end
