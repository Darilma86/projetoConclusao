class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :celucar
      t.string :rg
      t.string :sexo
      t.date :data_nasciemnto
      t.string :email
      t.string :cidade

      t.timestamps
    end
  end
end
