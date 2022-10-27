class AddStatusToDevolucao < ActiveRecord::Migration[5.0]
  def change
    add_column :devolucaos, :status, :integer, default: 0

  end
end
