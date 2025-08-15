class OrdenResultado < ApplicationRecord
  belongs_to :orden
  belongs_to :procedimiento
  belongs_to :prueba
  belongs_to :pruebaopcion
end
