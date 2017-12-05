class Voiture < ApplicationRecord
  has_one :voyagiste
  has_many  :trajets
end
