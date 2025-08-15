class CreateCups < ActiveRecord::Migration[8.0]
  def change
    create_table :cups do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :habilita

      t.timestamps
    end
  end
end
