class CreateProcedimientos < ActiveRecord::Migration[8.0]
  def change
    create_table :procedimientos do |t|
      t.references :cups, null: false, foreign_key: true
      t.references :grupo_laboratorio, null: false, foreign_key: true
      t.string :metodo

      t.timestamps
    end
  end
end
