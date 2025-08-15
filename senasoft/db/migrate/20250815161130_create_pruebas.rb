class CreatePruebas < ActiveRecord::Migration[8.0]
  def change
    create_table :pruebas do |t|
      t.references :procedimiento, null: false, foreign_key: true
      t.string :codigo
      t.string :nombre
      t.references :tipo_resultado, null: false, foreign_key: true
      t.string :unidad_medida
      t.boolean :habilita

      t.timestamps
    end
  end
end
