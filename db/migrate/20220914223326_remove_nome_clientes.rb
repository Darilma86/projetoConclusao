class RemoveNomeClientes < ActiveRecord::Migration[5.0]
  def change
    remove_column(:clientes, :nome)
  end
end
