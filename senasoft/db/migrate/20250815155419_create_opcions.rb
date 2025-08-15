class CreateOpcions < ActiveRecord::Migration[8.0]
  def change
    create_table :opcions do |t|
      t.string :variable
      t.string :descripcion
      t.integer :valor
      t.string :nombre
      t.string :abreviacion
      t.boolean :habilita

      t.timestamps
    end
  end
end
