class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :tipo
      t.string :descricao
      t.string :numero
      t.float :preco_compra
      t.float :preco_venda

      t.timestamps
    end
  end
end

def self.down
  drop_table :produtos
end
end
