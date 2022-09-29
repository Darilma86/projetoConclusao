class CreateCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :compras do |t|
      t.string :protocolo

      t.timestamps
    end
  end
end
