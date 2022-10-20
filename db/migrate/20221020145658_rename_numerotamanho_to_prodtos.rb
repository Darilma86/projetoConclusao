class RenameNumerotamanhoToProdtos < ActiveRecord::Migration[5.0]
  def change
    rename_column :produtos, :numero, :tamanho
  end
end
