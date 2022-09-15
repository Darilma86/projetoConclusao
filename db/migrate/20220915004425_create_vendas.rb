class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.datetime :data

      t.timestamps
    end
  end
end
