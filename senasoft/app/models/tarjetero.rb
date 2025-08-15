class Tarjetero < ApplicationRecord
  belongs_to :persona
  belongs_to :regimen
  belongs_to :eps
  belongs_to :nivel
end
