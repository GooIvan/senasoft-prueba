class CreatePersonas < ActiveRecord::Migration[8.0]
  def change
    create_table :personas do |t|
  t.references :tipo_identificacion, null: false, foreign_key: { to_table: :opcions }
      t.string :numero_identificacion, null: false
      t.string :apellido1, null: false
      t.string :apellido2
      t.string :nombre1, null: false
      t.string :nombre2
      t.date :fecha_nacimiento
  t.references :sexo_biologico, null: false, foreign_key: { to_table: :opcions }
      t.string :direccion
      t.string :telefono_movil
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end

    add_index :personas, :email, unique: true
  end
end
