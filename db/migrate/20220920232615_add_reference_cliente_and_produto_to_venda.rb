class AddReferenceClienteAndProdutoToVenda < ActiveRecord::Migration[5.0]
  def change
    add_column  :vendas, :cliente_id, :integer
    add_column :vendas, :produto_id, :integer
  end
end
