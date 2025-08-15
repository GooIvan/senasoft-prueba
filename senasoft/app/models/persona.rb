class Persona < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # Relaciones
  belongs_to :tipo_identificacion, class_name: "Opcion", foreign_key: "tipo_identificacion_id"
  belongs_to :sexo_biologico, class_name: "Opcion", foreign_key: "sexo_biologico_id"
  has_many :ordens
end