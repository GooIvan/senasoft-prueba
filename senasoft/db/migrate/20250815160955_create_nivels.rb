class CreateNivels < ActiveRecord::Migration[8.0]
  def change
    create_table :nivels do |t|
      t.references :eps, null: false, foreign_key: true
      t.string :nivel
      t.string :nombre
      t.references :regimen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
