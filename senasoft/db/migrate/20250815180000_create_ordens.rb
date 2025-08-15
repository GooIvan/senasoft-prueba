class CreateOrdens < ActiveRecord::Migration[8.0]
  def change
    create_table :ordens do |t|
      t.references :persona, null: false, foreign_key: true
      t.string :documento
      t.string :numero_orden
      t.date :fecha_orden
      t.timestamps
    end
  end
end
