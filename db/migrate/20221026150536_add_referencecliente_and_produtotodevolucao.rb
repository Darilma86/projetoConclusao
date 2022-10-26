class AddReferenceclienteAndProdutotodevolucao < ActiveRecord::Migration[5.0]
  def change
    add_column  :devolucaos, :cliente_id, :integer
    add_column  :devolucaos, :produto_id, :integer
  end
end
