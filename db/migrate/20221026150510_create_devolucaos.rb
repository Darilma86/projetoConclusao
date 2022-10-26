class CreateDevolucaos < ActiveRecord::Migration[5.0]
  def change
    create_table :devolucaos do |t|
      t.string :justificativa

      t.timestamps
    end
  end
end
