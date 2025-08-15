class Opcion < ApplicationRecord
  has_many :personas_tipo_identificacion, class_name: "Persona", foreign_key: "tipo_identificacion_id"
  has_many :personas_sexo_biologico, class_name: "Persona", foreign_key: "sexo_biologico_id"
end
