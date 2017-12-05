class Trajet < ApplicationRecord
  has_many  :voyages
  belongs_to  :voyagiste
  belongs_to  :voiture
end
