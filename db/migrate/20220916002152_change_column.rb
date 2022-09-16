class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :produtos, :descricao, :text
  end
end
