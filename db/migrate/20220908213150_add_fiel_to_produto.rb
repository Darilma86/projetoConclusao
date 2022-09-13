class AddFielToProduto < ActiveRecord::Migration[5.0]
  def change
    add_column :produtos, :quantidade, :integer
  end
end
