class UpdateEndereco < ActiveRecord::Migration[5.0]
  def change
    change_column :clientes, :endereco, :text
  end
end
