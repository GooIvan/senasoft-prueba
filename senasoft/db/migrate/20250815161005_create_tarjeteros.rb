class CreateTarjeteros < ActiveRecord::Migration[8.0]
  def change
    create_table :tarjeteros do |t|
      t.string :historia
      t.references :persona, null: false, foreign_key: true
      t.references :regimen, null: false, foreign_key: true
      t.references :eps, null: false, foreign_key: true
      t.references :nivel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
