class CreateProfesionals < ActiveRecord::Migration[8.0]
  def change
    create_table :profesionals do |t|
      t.string :codigo
      t.references :persona, null: false, foreign_key: true
      t.string :registro_medico
      t.references :tipo_prof, null: false, foreign_key: true

      t.timestamps
    end
  end
end
