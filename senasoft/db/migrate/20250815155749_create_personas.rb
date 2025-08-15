class CreatePersonas < ActiveRecord::Migration[8.0]
  def change
    create_table :personas do |t|
      t.integer :tipo_identificacion
      t.string :numero_identificacion
      t.string :apellido1
      t.string :apellido2
      t.string :nombre1
      t.string :nombre2
      t.date :fecha_nacimiento
      t.integer :sexo_biologico
      t.string :direccion
      t.string :telefono_movil
      t.string :email

      t.timestamps
    end
  end
end
