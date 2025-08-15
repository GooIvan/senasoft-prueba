class CreatePruebaOpcions < ActiveRecord::Migration[8.0]
  def change
    create_table :prueba_opcions do |t|
      t.references :prueba, null: false, foreign_key: true
      t.string :opcion
      t.decimal :valor_ref_min_f
      t.decimal :valor_ref_max_f
      t.decimal :valor_ref_min_m
      t.decimal :valor_ref_max_m

      t.timestamps
    end
  end
end
