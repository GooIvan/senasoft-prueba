class CreateEps < ActiveRecord::Migration[8.0]
  def change
    create_table :eps do |t|
      t.string :codigo
      t.string :razon_social
      t.string :nit
      t.boolean :habilita

      t.timestamps
    end
  end
end
