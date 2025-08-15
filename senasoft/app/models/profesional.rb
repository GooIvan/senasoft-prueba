class Profesional < ApplicationRecord
  belongs_to :persona
  belongs_to :tipo_prof
end
