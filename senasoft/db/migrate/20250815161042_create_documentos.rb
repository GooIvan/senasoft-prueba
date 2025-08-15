class CreateDocumentos < ActiveRecord::Migration[8.0]
  def change
    create_table :documentos do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :habilita

      t.timestamps
    end
  end
end
