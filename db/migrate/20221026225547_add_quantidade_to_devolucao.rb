class AddQuantidadeToDevolucao < ActiveRecord::Migration[5.0]
  def change
    add_column :devolucaos, :quantidade, :integer
  end
end
