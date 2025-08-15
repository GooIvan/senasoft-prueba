class CreateOrdenResultados < ActiveRecord::Migration[8.0]
  def change
    create_table :orden_resultados do |t|
      t.datetime :fecha
      t.references :orden, null: false, foreign_key: true
      t.references :procedimiento, null: false, foreign_key: true
      t.references :prueba, null: false, foreign_key: true
      t.references :pruebaopcion, null: false, foreign_key: true
      t.string :res_opcion
      t.decimal :res_numerico
      t.string :res_texto
      t.text :res_memo
      t.integer :num_procesamientos

      t.timestamps
    end
  end
end
