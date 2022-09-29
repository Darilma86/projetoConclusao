class AddValorAndQuantidadeToVendas < ActiveRecord::Migration[5.0]
  def change
    add_column  :vendas, :quantidade, :integer
    add_column :vendas, :valor_venda, :float
  end
end
